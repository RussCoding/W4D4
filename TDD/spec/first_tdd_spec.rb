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