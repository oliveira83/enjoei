require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require "rspec"
require "pry"
require "yaml"
require "json"


CONFIG = YAML::load_file(File.join(__dir__, "/config/dev.yml"))
