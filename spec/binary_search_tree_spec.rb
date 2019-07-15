require 'pry'
require './lib/node'
require './lib/binary_search_tree'

describe 'it can create a tree' do
  it 'tests it exists' do
    tree = BinarySearchTree.new

    expect(tree).to be_an_instance_of BinarySearchTree
  end
end

describe 'insert method' do
  it 'passes in new data' do
    tree = BinarySearchTree.new
    score = 61
    data = "Bill & Ted's Excellent Adventure"

    data_addition = tree.insert(score, data)

    expect(data_addition).to eq(0)

    score2 = 16
    data2 = "Johnny English"

    data_addition2 = tree.insert(score2, data2)

    expect(data_addition2).to eq(1)

    score3 = 92
    data3 = "Sharknado 3"

    data_addtion3 = tree.insert(score3, data3)

    expect(data_addtion3).to eq(1)

    score4 = 50
    data4 = "Hannibal Buress: Animal Furnace"

    data_addtion4 = tree.insert(score4, data4)

    expect(data_addtion4).to eq(2)
  end
end
