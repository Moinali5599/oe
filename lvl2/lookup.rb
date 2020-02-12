def get_command_line_argument
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

domain = get_command_line_argument
dns_raw = File.readlines("zone")
def parse_dns(dns_raw)
  dns_records = {}
  dns_change1 = dns_raw.map{|x| x.split(",")}
  dns_change2 = dns_change1.map{|x| x.map{|i| i.strip}}
  dns_change2.each{|array| dns_records[array[1]] = {:type => array[0], :ip_address => array[2]}}
  dns_records
end

def resolve(dns_records, lookup_chain, domain)
  keys = dns_records.keys
  if !(keys.include?(domain))
    puts "Record Not Found"
    lookup_chain
  elsif dns_records[domain][:type]=="A"
    lookup_chain.push(dns_records[domain][:ip_address])
    lookup_chain
  elsif dns_records[domain][:type]=="CNAME"
    lookup_chain.push(dns_records[domain][:ip_address])
    resolve(dns_records, lookup_chain, dns_records[domain][:ip_address])
  end
end
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")