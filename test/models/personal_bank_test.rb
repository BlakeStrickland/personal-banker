require 'test_helper'

class PersonalBankTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "total balance" do
    assert_equal 31.00, PersonalBank.balance
  end
  test "total transactions" do
      assert_equal 3, PersonalBank.num_of_trans
  end
  test "Total monthly transactions" do
    assert_equal 21.00, PersonalBank.monthly_expenses
  end
  test "Last months transactions" do
    assert_equal 10.00, PersonalBank.last_months_expenses
  end
  test "Last months total transactions" do
    assert_equal 1, PersonalBank.last_months_num
  end
  test "Largest expense this month" do
    assert_equal 'IronYard', PersonalBank.largest_expense
  end
end
