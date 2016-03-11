require 'rails_helper'

describe Identity do
  let(:identity) { FactoryGirl.create(:identity) }
  let(:obj) { OpenStruct.new }
  let(:info) { OpenStruct.new }
  let(:creds) { OpenStruct.new }

  before do
    creds.token = ''
    creds.refresh_token = ''

    info.name = identity.name
    info.email = identity.email
    info.image = identity.image

    obj.provider = identity.provider
    obj.uid = identity.uid
    obj.info = info
    obj.credentials = creds
  end

  describe '.find_for_oauth' do
    context 'when find identity of user' do
      it 'returns identity object' do
        identity = described_class.find_for_oauth(obj)
        expect(identity).to eq(identity)
      end
    end
  end
end
