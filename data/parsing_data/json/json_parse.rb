require 'json'

json = JSON.parse(File.read('json_example.json'))

p json['colors'][0].keys
