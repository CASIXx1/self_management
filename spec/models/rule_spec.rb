require 'rails_helper'

RSpec.describe Rule, type: :model do
  describe 'validate' do
    context 'present' do
      it 'Customがあれば、有効であること' do
        expect(build(:valid_rule)).to be_valid
      end

      it 'Customがないと、無効であること' do
        expect(build(:rule, custom: nil)).not_to be_valid
      end
    end
  end
end
