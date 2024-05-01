require_relative '../../ds/node'

describe 'Node' do
  # create an instance of node
  let(:node) { Node.new('header') }

  describe 'attributes' do
    it 'matches nil at initilization' do
      nil_node = Node.new
      expect(nil_node.value).to be_nil
    end

    it 'allows reading for :value' do
      # expect(node.value).to eq("header")
      expect(node).to have_attributes(value: 'header')
    end

    it 'allows writing for :value' do
      node.value = 'header2'
      expect(node.value).to eq('header2')
    end
  end

  describe 'to string' do
    it 'matches when value is stringified' do
      expect(node.to_s).to eq('Value of the node is: header')
    end
  end
end
