require './gen/vanilla'

RSpec.describe Vanilla, '#ice' do
  it 'describes itself' do
    expect(Vanilla.description).to eq 'vanilla'
  end

  it 'generates the right number of paragraphs' do
    expect(Vanilla.generate(3).length).to eq 3
  end

  it 'does things for the queen' do
    output = Vanilla.generate(1)[0]
    expect(output).to include 'herp derp'
  end
end
