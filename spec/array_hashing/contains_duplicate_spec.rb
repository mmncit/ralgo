require_relative '../../array_hashing/contains_duplicate'

describe 'ArrayHashing' do
  describe 'contains_duplicate' do
    it 'returns true if the array contains duplicate elements' do
      expect(contains_duplicate([1, 2, 3, 1])).to eq(true)
    end
    it 'returns false if the array does not contain duplicate elements' do
      expect(contains_duplicate([1, 2, 3, 4])).to eq(false)
    end
  end

  describe 'contains_duplicate_using_hash' do
    it 'returns true if the array contains duplicate elements' do
      expect(contains_duplicate_using_hash([1, 2, 3, 1])).to eq(true)
    end
    it 'returns false if the array does not contain duplicate elements' do
      expect(contains_duplicate_using_hash([1, 2, 3, 4])).to eq(false)
    end
  end
end
