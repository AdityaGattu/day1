def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")


# FILL YOUR CODE HERE
# ..

def parse_dns(dns_raw)
  dns_records = {}
  #select the records that are not empty and that donot start with #(for filtering out comments)
  dns_raw=dns_raw.select{|i| i!="\n"}
  dns_raw=dns_raw.select{|i| !(i.start_with?"#")}
  # splitting each line in the zone file
  dns_raw.map {|line| line.strip.split(", ") }.
    each {|record| dns_records[record[1]] = { :record_type => record[0], :ip_address => record[2] } }
return dns_records
end

# recursive function resolve that looks up the domain name in the hash and pushes the results to the lookup_chain array.
def resolve(dns_records, lookup_chain, domain)
    if dns_records[domain] != nil
      if dns_records[domain][:record_type] == "A"
          lookup_chain << dns_records[domain][:ip_address]
        return lookup_chain
      end
      lookup_chain << dns_records[domain][:ip_address]
      return resolve(dns_records, lookup_chain, dns_records[domain][:ip_address])
    else
      lookup_chain << "Domain was not found."
      return lookup_chain
    end
  end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")

