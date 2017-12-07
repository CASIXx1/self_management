require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validate' do
    context 'present test' do
      it 'emailとpasswordがあれば、有効であること' do
        expect(FactoryGirl.build(:user)).to be_valid
      end

      it 'emailがない場合、有効でないこと' do
        expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
      end

      it 'passwordがない場合、有効でないこと' do
        expect(FactoryGirl.build(:user, password: nil)).not_to be_valid
      end
    end
  end
end
