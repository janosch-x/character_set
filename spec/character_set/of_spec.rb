shared_examples :character_set_of do |variant|
  it 'returns the CharacterSet used by the given String' do
    expect(variant.of('cccaaabbb')).to eq variant[97, 98, 99]
  end

  it 'raises an ArgumentError if passed a non-String' do
    expect { variant.of(false) }.to raise_error(ArgumentError)
    expect { variant.of(nil) }.to raise_error(ArgumentError)
    expect { variant.of(1) }.to raise_error(ArgumentError)
    expect { variant.of(Object.new) }.to raise_error(ArgumentError)
  end
end

describe "CharacterSet::of" do
  it_behaves_like :character_set_of, CharacterSet
end

describe "CharacterSet::Pure::of" do
  it_behaves_like :character_set_of, CharacterSet::Pure
end
