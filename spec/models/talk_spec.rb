require 'rails_helper'

describe Talk do
  let(:talk) { FactoryGirl.build(:talk) }

  subject { talk }

  it { is_expected.to belong_to(:speaker) }
  it { is_expected.to belong_to(:event) }
  it { is_expected.to be_valid }
end