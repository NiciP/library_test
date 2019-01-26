require 'yaml'

class Books
    attr_accessor :list  
    def initialize(attrs = {})
        @load_list = YAML.load_file('./lib/data.yml')
    end
end