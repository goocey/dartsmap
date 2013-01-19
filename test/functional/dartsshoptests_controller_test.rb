require 'test_helper'

class DartsshoptestsControllerTest < ActionController::TestCase
  setup do
    @dartsshoptest = dartsshoptests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dartsshoptests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dartsshoptest" do
    assert_difference('Dartsshoptest.count') do
      post :create, dartsshoptest: {  }
    end

    assert_redirected_to dartsshoptest_path(assigns(:dartsshoptest))
  end

  test "should show dartsshoptest" do
    get :show, id: @dartsshoptest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dartsshoptest
    assert_response :success
  end

  test "should update dartsshoptest" do
    put :update, id: @dartsshoptest, dartsshoptest: {  }
    assert_redirected_to dartsshoptest_path(assigns(:dartsshoptest))
  end

  test "should destroy dartsshoptest" do
    assert_difference('Dartsshoptest.count', -1) do
      delete :destroy, id: @dartsshoptest
    end

    assert_redirected_to dartsshoptests_path
  end
end
