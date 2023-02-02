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

    describe '#my_transpose' do
        context "not a 2d array" do
            it 'should raise a "wrong 2d array" error' do
                arr = [1,2,3]
                expect {arr.my_transpose}.to raise_error("wrong 2d array")     
            end
        end
        context 'is a 2d array' do
            rows = [[0,1,2],[3,4,5], [6,7,8]]
            cols = [[0,3,6], [1,4,7], [2,5,8]]
            it 'should not call the "oh so amazing transpose method" ok??' do
                expect(rows).to_not receive(:transpose)
                rows.my_transpose
            end
            it 'should return a transposed array' do

                expect(rows.my_transpose).to eq(cols)
            end

        end
    end

end 
#outside of ends