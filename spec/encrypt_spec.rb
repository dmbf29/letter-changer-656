require_relative '../encrypt'
# 1. describe the method we're testing (describe)
# 2. say what we're testing (it)
# 3. call the method, and compare the outcome (expect)
describe '#encrypt' do
  it 'should return an empty string when given one' do
    actual = encrypt('')
    expect(actual).to eq('')
  end

  it 'should return "XYZ" when given "ABC"' do
    actual = encrypt('ABC')
    expect(actual).to eq('XYZ')
  end

  it 'should return an encrypted msg when given a long string' do
    actual = encrypt('THE QUICK BROWN FOX, JUMPS OVER THE LAZY DOG')
    expect(actual).to eq('QEB NRFZH YOLTK CLU, GRJMP LSBO QEB IXWV ALD')
  end
end

# encrypt('ABC') == 'XYZ'
# abbreviate('what the french') == 'WTF'
