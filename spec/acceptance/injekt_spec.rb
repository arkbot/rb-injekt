describe Injekt do
  it 'is defined' do
    expect { Injekt }.not_to raise_error
  end

  it 'has a version number' do
    expect(Injekt::VERSION).not_to be nil
  end
end
