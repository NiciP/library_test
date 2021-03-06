require './lib/books.rb'


describe Books do
    let(:person) {instance_double('Person' , name: 'Superman')}

    before do 
        list = YAML.load_file('./lib/data.yml')
        File.open('./lib/data.yml', 'w') { |f| f.write list.to_yaml }
    end

        
    it 'library shows list of all books' do
        expected_output = YAML.load_file('./lib/data.yml')
        expect(subject.list).not_to be nil
    end

    
end
