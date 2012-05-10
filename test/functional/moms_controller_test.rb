require 'test_helper'

class MomsControllerTest < ActionController::TestCase
  setup do
    @mom = moms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mom" do
    assert_difference('Mom.count') do
      post :create, mom: { because: @mom.because, change: @mom.change, kid: @mom.kid, name: @mom.name, story: @mom.story, word_one: @mom.word_one, word_three: @mom.word_three, word_two: @mom.word_two, year: @mom.year }
    end

    assert_redirected_to mom_path(assigns(:mom))
  end

  test "should show mom" do
    get :show, id: @mom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mom
    assert_response :success
  end

  test "should update mom" do
    put :update, id: @mom, mom: { because: @mom.because, change: @mom.change, kid: @mom.kid, name: @mom.name, story: @mom.story, word_one: @mom.word_one, word_three: @mom.word_three, word_two: @mom.word_two, year: @mom.year }
    assert_redirected_to mom_path(assigns(:mom))
  end

  test "should destroy mom" do
    assert_difference('Mom.count', -1) do
      delete :destroy, id: @mom
    end

    assert_redirected_to moms_path
  end
end
