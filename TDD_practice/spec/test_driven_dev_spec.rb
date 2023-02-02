require 'rspec'
require 'test_driven_dev'

describe Array do 
    describe 'my_uniq' do 
        let(:arr) {[1,2,1,3,3]}
        it "#my_uniq should return unique elements in a new array " do 
            expect(arr.my_uniq).to eq([1,2,3])
        end 
    end 


end 
