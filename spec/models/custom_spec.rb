require "rails_helper"

RSpec.describe Custom, type: :model do
  describe "validate" do
    context "present" do
      it "Userがあれば、有効であること" do
        user = User.create(
          id: 1,
          email: "test@test.com",
          password: "hogehoge"
        )

        custom = user.customs.create()
        expect(custom).to be_valid
      end

      it "Userがないと、無効であること" do
        custom = Custom.create()
        expect(custom).not_to be_valid
      end
    end
  end
end
