require "rails_helper"

RSpec.describe Rule, type: :model do
  describe "validate" do
    context "present" do
      it "Customがあれば、有効であること" do
        user = User.create(
          id: 1,
          email: "test@test.com",
          password: "hogehoge"
        )

        custom = user.customs.create()
        rule = custom.rules.create()
        expect(rule).to be_valid
      end

      it "Customがないと、無効であること" do
        rule = Rule.create()
        expect(rule).not_to be_valid
      end
    end
  end
end
