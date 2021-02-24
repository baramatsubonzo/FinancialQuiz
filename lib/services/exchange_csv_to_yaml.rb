require 'csv'
require 'yaml'
require 'pp'
path_to_csv = 'ipo.csv'
path_to_yaml = 'ipo.yaml'
csv = CSV.read(path_to_csv, :headers => true).map(&:to_hash)
hash = csv
File.open(path_to_yaml, 'w') { |f| f.write(hash.to_yaml) }
pp YAML.load_file(path_to_yaml)