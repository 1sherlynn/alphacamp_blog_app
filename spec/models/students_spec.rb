require "rails_helper"

RSpec.describe Student, type: :model do

	describe 'validations' do

 it { is_expected.to validate_presence_of(:name)}
 it { is_expected.to validate_presence_of(:email)}
 it { is_expected.to validate_uniqueness_of(:email)}
end

describe '#days_to_birthday' do 
	let(:days_to_birthday) { subject.days_to_birthday}
	it { expect(days_to_birthday).to eq(10)}
	end
end

