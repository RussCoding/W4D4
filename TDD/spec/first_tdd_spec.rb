require "first_tdd"

describe "#my_uniq" do
    let(:arr) {[1,2,3,3,3]}
    let(:arr2) {[0,1,5,2,2,4,3,2]}
    it "accepts an array" do
        expect{my_uniq(10)}.to raise_error(ArgumentError)
    end
    it "Returns a unique an array with unique elements" do
        expect(my_uniq(arr)).to eq([1,2,3])
        expect(my_uniq(arr2)).to eq([0,1,5,2,4,3])
    end
    it "Should not mutate the array" do
        dupe = arr.dup
        my_uniq(arr)
        expect(arr).to eq(dupe)
    end
end

describe "Array" do
    
    
    describe "#two_sum" do
        
        let(:arr) {[-1, 0, 2, -2, 1]}
        let(:arr2) {[0, 2, -1, -2, 1]}
        let(:arr3) {[-2, 2, 1, -3, 3, 0, -1]}

        it "returns an array of pairs" do
            expect(arr.two_sum.all? {|ele| ele.length == 2 && ele.is_a?(Array) }).to eq(TRUE)
        end

        it "should return all pairs of indices where the sum is equal to zero" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should return the pairs sorted dictionary-wise" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
            expect(arr2.two_sum).to eq([[1, 3], [2, 4]])
            expect(arr3.two_sum).to eq([[0, 1], [2, 6], [3,4]])
        end

        it "each pair should be smaller index, bigger index" do
            expect(arr.two_sum.all? { |pair| pair[0] < pair[1] }).to eq(TRUE)
        end

    end
end

describe "#my_transpose" do
    let(:arr) {[[1,2,3],
                [4,5,6],
                [7,8,9]]}
    let(:transposed) {[[1,4,7], [2,5,8], [3,6,9]]}
    let(:non_square) {[[0,1],[0,1,2,1,1,1]]}

    it "should accept a square matrix" do
        expect{my_transpose(non_square)}.to raise_error(ArgumentError)
    end

    it "should return array with rows as columns and columns as rows" do
        expect(arr.transpose).to eq(transposed)
    end
end


# stock prices
# [30, 5, 200, 3, 6000, 20, 100]
#buy day comes before sell day
#look for the largest range
#interate through the array with uniq pairs and find the largest range


describe "#stock_prices" do
    let (:arr) {[30, 5, 200, 3, 6000, 20, 100]}

    it "should accept an array" do 
        expect{stock_prices(5)}.to raise_error(ArgumentError) 

    end

    it "should return the days that will give you the biggest profit" do 
        expect(stock_prices(arr)).to eq([3,4])
    end

    it "the buy date should be before the sell date" do
        expect(stock_prices(arr)[0] < stock_prices(arr)[1]).to eq TRUE
    end

end