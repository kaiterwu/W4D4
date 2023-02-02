require 'rspec'
require 'test_driven_dev'


# add exceptions down the road
describe Array do 
    describe '#my_uniq' do 
        let(:arr) {[1,2,1,3,3]}
        it "#my_uniq should return unique elements in a new array " do 
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end

    describe '#two_sum' do
        # let(:arr) {[-1,0,2,-2,1]}
        context 'size less than 2' do
            it 'should return empty array' do
                expect([]).to eq([])
                expect([0]).to eq([])
            end
        end
    end

end 
