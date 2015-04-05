require './gen/basic'

RSpec.describe Basic, '#af' do
  it 'describes itself' do
    expect(Basic.description).to eq 'basic af'
  end

  it 'generates the right number of paragraphs' do
    expect(Basic.generate(3).length).to eq 3
  end

  it 'herps and derps' do
    output = Basic.generate(1)[0]
    expect(output).to include 'herp derp'
  end
end
