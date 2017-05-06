require 'test_helper'

class PurchasedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchased = purchaseds(:one)
  end

  test "should get index" do
    get purchaseds_url
    assert_response :success
  end

  test "should get new" do
    get new_purchased_url
    assert_response :success
  end

  test "should create purchased" do
    assert_difference('Purchased.count') do
      post purchaseds_url, params: { purchased: { date_purchased: @purchased.date_purchased } }
    end

    assert_redirected_to purchased_url(Purchased.last)
  end

  test "should show purchased" do
    get purchased_url(@purchased)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchased_url(@purchased)
    assert_response :success
  end

  test "should update purchased" do
    patch purchased_url(@purchased), params: { purchased: { date_purchased: @purchased.date_purchased } }
    assert_redirected_to purchased_url(@purchased)
  end

  test "should destroy purchased" do
    assert_difference('Purchased.count', -1) do
      delete purchased_url(@purchased)
    end

    assert_redirected_to purchaseds_url
  end
end
