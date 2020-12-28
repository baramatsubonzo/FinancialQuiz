require 'yaml'
require 'time'
require 'pp'

path_to_yaml = 'ipo_list.yaml'
yaml_list = YAML.load_file('./ipo.yaml')

new_yaml_list = yaml_list.map do |yaml|
	{ id: yaml.fetch('id').to_i ,
		company_name: yaml.fetch('company_name') ,
		industry: yaml.fetch('industry') ,
		current_asset: yaml.fetch('current_asset').to_i ,
		fixed_asset: yaml.fetch('fixed_asset').to_i ,
		current_liability: yaml.fetch('current_liability').to_i ,
		fixed_liability: yaml.fetch('fixed_liability').to_i ,
		net_asset: yaml.fetch('net_asset').to_i ,
		total_asset: yaml.fetch('total_asset').to_i ,
		total_liability: yaml.fetch('total_liability').to_i ,
		edinet_code: yaml.fetch('edinet_code') ,
		security_code: yaml.fetch('security_code') ,
		fiscal_period_end_date: Time.parse(yaml.fetch('fiscal_period_end_date'))
	}
end

File.open(path_to_yaml, 'w') do |f| 
	f.write(new_yaml_list.to_yaml)
end

pp YAML.load_file(path_to_yaml)