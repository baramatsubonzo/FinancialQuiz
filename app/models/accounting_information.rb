class AccountingInformation < ActiveHash::Base
  data = open('ipo_list.yaml', 'r') { |f| YAML.load(f) }
  self.data = data
end