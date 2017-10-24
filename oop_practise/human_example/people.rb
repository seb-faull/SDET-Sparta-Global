require 'yaml'
require_relative 'person'

people = YAML.load_file('names.yml')


  people.each do |k,v|
    v.each do |k,v|
      puts v
    end
  end
