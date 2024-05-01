require_relative '../../ds/btree'

describe 'Btree' do
  describe 'traversals' do
    # create a binary tree
    bst = BTree.new(28)
    # insert data into the tree
    bst.insert(14)
    bst.insert(7)
    bst.insert(6)
    bst.insert(12)
    bst.insert(24)
    bst.insert(48)

    it 'matches the output of inorder traversal' do
      expect { bst.print_inorder_from_root }.to output('6 7 12 14 24 28 48 ').to_stdout
    end
  end
end
