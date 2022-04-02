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

  it 'handles negative shift factors' do
    result = 'H  MN  KNMFDQ  EDZRS  NM  ZCCHSHNMZK  ROZBDR!'
    expect(caesar_cipher('I  NO  LONGER  FEAST  ON  ADDITIONAL  SPACES!', -1)).to eq(result)
  end

  it 'handles shift factors higher than 26' do
    result = 'Mpsfn jqtvn epmps tju bnfu, dpotfdufuvs bejqjtdjoh fmju.'
    expect(caesar_cipher('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 27)).to eq(result)
  end
end
