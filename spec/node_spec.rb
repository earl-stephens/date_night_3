require './lib/node'
describe 'it can create a node' do
  it 'test it exists' do
    score = 81
    data = 'Blade Runner'
    node = Node.new(score, data)

    expect(node).to be_an_instance_of Node
    expect(node.score).to eq(81)
    expect(node.data).to eq('Blade Runner')
  end
end
