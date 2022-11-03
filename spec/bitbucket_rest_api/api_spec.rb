require 'spec_helper'

describe BitBucket::API do
  let(:api) { described_class.new }
  let!(:get_file_request) {
    stub_request(:get, "https://bitbucket.org/api/2.0/repositories/repo/src/sha/path").
      to_return(status: 200, body: 'raw string')
  }

  describe '#get_request' do
    it 'works with raw option' do
      api.get_request "/2.0/repositories/repo/src/sha/path", {}, raw: true

      expect(get_file_request).to have_been_requested
    end
  end
end
