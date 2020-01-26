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
line=Array.new
for i in dns_raw do
  li=i.split(",")
  line.push(li)
end
return line
end
  dns_records = parse_dns(dns_raw)
  def resolve(dns_records,lookup_chain,domain)
    for i in dns_records do
      for j in i do
        if j == "A"
          Arecord = {
            :domain_name => i[1]
            :ip_address => i[2]
          }
        else
          Cname = {
            :alter_domain1 => i[1]
            :main_domin => i[2]
          }
        end
      end
  end
  end
  lookup_chain = [domain]
  lookup_chain = resolve(dns_records, lookup_chain, domain)
  puts lookup_chain
  #puts lookup_chain.join(" => ")