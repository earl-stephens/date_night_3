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

describe 'include?' do
  it 'checks if that node is in the tree' do
    tree = BinarySearchTree.new
    score = 61
    data = "Bill & Ted's Excellent Adventure"
    data_addition = tree.insert(score, data)
    score2 = 16
    data2 = "Johnny English"
    data_addition2 = tree.insert(score2, data2)
    score3 = 92
    data3 = "Sharknado 3"
    data_addtion3 = tree.insert(score3, data3)
    score4 = 50
    data4 = "Hannibal Buress: Animal Furnace"
    data_addtion4 = tree.insert(score4, data4)

    expect(tree.include?(16)).to eq true
    expect(tree.include?(72)).to eq false
  end
end

describe 'depth of' do
  it 'method shows depth of node in the tree' do
    tree = BinarySearchTree.new
    score = 61
    data = "Bill & Ted's Excellent Adventure"
    data_addition = tree.insert(score, data)
    score2 = 16
    data2 = "Johnny English"
    data_addition2 = tree.insert(score2, data2)
    score3 = 92
    data3 = "Sharknado 3"
    data_addtion3 = tree.insert(score3, data3)
    score4 = 50
    data4 = "Hannibal Buress: Animal Furnace"
    data_addtion4 = tree.insert(score4, data4)

    expect(tree.depth_of(72)).to eq(nil)
    expect(tree.depth_of(92)).to eq(1)
    expect(tree.depth_of(50)).to eq(2)
  end
end

describe 'max' do
  xit 'method finds the highest score in the tree' do
    tree = BinarySearchTree.new
    score = 61
    data = "Bill & Ted's Excellent Adventure"
    data_addition = tree.insert(score, data)
    score2 = 16
    data2 = "Johnny English"
    data_addition2 = tree.insert(score2, data2)
    score3 = 92
    data3 = "Sharknado 3"
    data_addtion3 = tree.insert(score3, data3)
    score4 = 50
    data4 = "Hannibal Buress: Animal Furnace"
    data_addtion4 = tree.insert(score4, data4)

    expect(tree.max).to eq(92)
  end
end
