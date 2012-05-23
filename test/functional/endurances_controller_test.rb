require 'test_helper'

class EndurancesControllerTest < ActionController::TestCase
  setup do
    @endurance = endurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endurance" do
    assert_difference('Endurance.count') do
      post :create, endurance: {  }
    end

    assert_redirected_to endurance_path(assigns(:endurance))
  end

  test "should show endurance" do
    get :show, id: @endurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endurance
    assert_response :success
  end

  test "should update endurance" do
    put :update, id: @endurance, endurance: {  }
    assert_redirected_to endurance_path(assigns(:endurance))
  end

  test "should destroy endurance" do
    assert_difference('Endurance.count', -1) do
      delete :destroy, id: @endurance
    end

    assert_redirected_to endurances_path
  end
end
