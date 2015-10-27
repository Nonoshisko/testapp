require 'test_helper'

class MainroadsControllerTest < ActionController::TestCase
  setup do
    @mainroad = mainroads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainroads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainroad" do
    assert_difference('Mainroad.count') do
      post :create, mainroad: { Cena: @mainroad.Cena, Co: @mainroad.Co, Kam: @mainroad.Kam, Kdo: @mainroad.Kdo }
    end

    assert_redirected_to mainroad_path(assigns(:mainroad))
  end

  test "should show mainroad" do
    get :show, id: @mainroad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mainroad
    assert_response :success
  end

  test "should update mainroad" do
    patch :update, id: @mainroad, mainroad: { Cena: @mainroad.Cena, Co: @mainroad.Co, Kam: @mainroad.Kam, Kdo: @mainroad.Kdo }
    assert_redirected_to mainroad_path(assigns(:mainroad))
  end

  test "should destroy mainroad" do
    assert_difference('Mainroad.count', -1) do
      delete :destroy, id: @mainroad
    end

    assert_redirected_to mainroads_path
  end
end
