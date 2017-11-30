require "rails_helper"

RSpec.describe Dairy, type: :model do
  describe "validate" do
    context "present" do
      it "Userがあれば、有効であること" do
        user = User.create(
          id: 1,
          email: "test@test.com",
          password: "hogehoge",
        )

        dairy = user.dairies.create(
        )
        expect(dairy).to be_valid
      end

      it "Userがないと、有効であること" do
        dairy = Dairy.create(
        )
        expect(dairy).not_to be_valid
      end
    end
  end
end
