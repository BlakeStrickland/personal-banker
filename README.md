###TDD wallet app


one:
  amount: 10.00
  exhanges: MyString
  description: MyText

two:
  amount: 10.00
  exhanges: MyString
  description: MyText

three:
  amount: 10.00
  exhanges: MyString
  description: MyText
  created_at: 2016-02-02 21:17:41 -0500

-------------------------------------------------------------------------------

class PersonalBankTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "total balance" do
    assert_equal 30.00, PersonalBank.balance
  end
  test "total transactions" do
      assert_equal 3, PersonalBank.num_of_trans
  end
  test "Total monthly transactions" do
    assert_equal 20.00, PersonalBank.monthly_expenses
  end
end
