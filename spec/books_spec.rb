require './lib/books.rb'


describe Books do

    before do 
        collection = YAML.load_file('./lib/data.yml')
        File.open('./lib/data.yml', 'w') { |f| f.write collection.to_yaml }
    end
    
end
