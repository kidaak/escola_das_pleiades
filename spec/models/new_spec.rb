require 'spec_helper'

describe New do
  describe 'Validations' do
    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:content) }
    it { expect(subject).to validate_presence_of(:author) }
    it { expect(subject).to validate_presence_of(:ordering) }
    it { expect(subject).to validate_presence_of(:headline) }
    it { expect(subject).to validate_presence_of(:publish_at) }
  end
end
