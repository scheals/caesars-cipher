require './caesars_cipher'

describe '#caesar_cipher' do
  it 'does not change the string when shift factor is 0' do
    result = 'I am not interested in being changed.'
    expect(caesar_cipher('I am not interested in being changed.', 0)).to eq(result)
  end
  it 'handles positive shift factors' do
    result = 'Mpsfn jqtvn epmps tju bnfu, dpotfdufuvs bejqjtdjoh fmju.'
    expect(caesar_cipher('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1)).to eq(result)
  end
end
