require 'cucumber'
require 'json-schema'
require 'rest-client'
require 'rspec'
require 'byebug'

## rodar o yml##
 $cenarios = YAML.load_file('./features/config/data/relatorio.yml')
