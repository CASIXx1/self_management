require "rails_helper"

RSpec.describe Custom, type: :model do
  describe "validate" do
    context "present" do
      it "Userがあれば、有効であること" do
        expect(FactoryGirl.build(:valid_custom)).to be_valid
      end

      it "Userがないと、無効であること" do
        expect(FactoryGirl.build(:custom, user: nil)).not_to be_valid
      end
    end
  end
end
