require_relative '../../services/foo'

RSpec.configure do |config|
  config.extend(Foo)
end

RSpec.describe Foo do
  describe '#something' do
    let(:response) { Foo.something }
    it 'should be hi' do
      expect(response).to be('other')
    end
  end
end

RSpec.shared_context 'shared' do
  something
end
