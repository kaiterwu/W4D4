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
        context 'self is an array' do 
            context 'size less than 2' do
                it 'should return empty array' do
                    expect([].two_sum).to eq([])
                    expect([0].two_sum).to eq([])
                end
            end

            context 'size greater than 2' do 
                it 'should return 2d array with subarray of indices' do 
                    arr = [-1,0,2,-2,1]
                    expect(arr.two_sum).to eq([[0,4],[2,3]])
                end 
            end 
        end 

        context 'elemnt of array is not an integer' do 
            it 'should raise TypeError' do 
                arr = ["apple"]
                expect{arr.two_sum}.to raise_error(TypeError)
            end
        end 

    

    end

end 
