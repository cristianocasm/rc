require 'rails_helper'

RSpec.describe Board do
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:text) }
  it { is_expected.to have_db_column(:public).of_type(:boolean) }

  context '#public?' do
    it 'defaults to false' do
      expect(subject.public?).to be_falsey
    end
  end
end
