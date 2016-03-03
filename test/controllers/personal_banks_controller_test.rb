require 'test_helper'

class PersonalBanksControllerTest < ActionController::TestCase
  setup do
    @personal_bank = personal_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_bank" do
    assert_difference('PersonalBank.count') do
      post :create, personal_bank: { amount: @personal_bank.amount, description: @personal_bank.description, exhanges: @personal_bank.exhanges }
    end

    assert_redirected_to personal_bank_path(assigns(:personal_bank))
  end

  test "should show personal_bank" do
    get :show, id: @personal_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_bank
    assert_response :success
  end

  test "should update personal_bank" do
    patch :update, id: @personal_bank, personal_bank: { amount: @personal_bank.amount, description: @personal_bank.description, exhanges: @personal_bank.exhanges }
    assert_redirected_to personal_bank_path(assigns(:personal_bank))
  end

  test "should destroy personal_bank" do
    assert_difference('PersonalBank.count', -1) do
      delete :destroy, id: @personal_bank
    end

    assert_redirected_to personal_banks_path
  end
end
