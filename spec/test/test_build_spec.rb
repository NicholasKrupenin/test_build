require_relative '../../test/test_build'

RSpec.describe 'testing buid' do

  describe '#hi_by' do
    let(:test_arr) { [1, 2, 3, 4, 5, 10, 15] }

    it 'transform number to chars' do
      expect(hi_by(test_arr)).to eq "12Hi4ByByHiBy"
    end
  end  

  describe '#reverse_case' do
    let(:test_string) { "JohnDoe" }

    it 'transform case' do
      expect(reverse_case(test_string)).to eq "jOHNdOE"
    end
  end

  describe '#dictionary_string' do
    let(:test_dictionary) { ["john", "Doe", "Search"] }
    let(:test_string) { "JohnDoe" }
    let(:test_string_false) { "JojDoz" }

    it 'word parse' do
      expect(dictionary_string?(test_string, test_dictionary)).to be_truthy
    end

    it 'word parse (return false)' do
      expect(dictionary_string?(test_string_false, test_dictionary)).to be_falsey
    end
  end

  describe '#sub_array' do
    let(:test_array) { [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4] }

    it 'search sub array' do
      expect(sub_array(test_array)).to match_array [4, -1, 2, 1]
    end
  end

  describe '#triangle_path' do
    let(:test_triangle) { [[2], [3,4], [6,5,7], [4,1,8,3]] }

    it 'search min path' do
      expect(triangle_path(test_triangle)).to match_array [2, 3, 5, 1]
    end
  end
end
