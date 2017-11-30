require "rails_helper"

RSpec.describe User, type: :model do
  describe "validate" do
    context "present test" do
      it "emailとpasswordがあれば、有効であること" do
        user = User.create(
          id: 1,
          email: "test@test.com",
          password: "hogehoge",
        )
        expect(user).to be_valid
      end

      it "emailがない場合、有効でないこと" do
        user = User.create(
          id: 1,
          password: "hogehoge",
        )
        expect(user).not_to be_valid
      end

      it "passwordがない場合、有効でないこと" do
        user = User.create(
          id: 1,
          password: "hogehoge",
        )
        expect(user).not_to be_valid
      end
    end
  end
end
