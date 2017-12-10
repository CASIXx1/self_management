require 'rails_helper'

RSpec.describe Dairy, type: :model do
  describe 'validate' do
    context 'present' do
      it 'Userがあれば、有効であること' do
        expect(FactoryGirl.build(:valid_dairy)).to be_valid
      end

      it 'dateがないと、無効であること' do
        expect(FactoryGirl.build(:valid_dairy, date: nil)).not_to be_valid
      end

      it 'Userがないと、無効であること' do
        expect(FactoryGirl.build(:dairy, user: nil)).not_to be_valid
      end
    end
  end
end
