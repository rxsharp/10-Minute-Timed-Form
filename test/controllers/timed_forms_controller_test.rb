require 'test_helper'

class TimedFormsControllerTest < ActionController::TestCase
  setup do
    @timed_form = timed_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timed_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timed_form" do
    assert_difference('TimedForm.count') do
      post :create, timed_form: { begin: @timed_form.begin }
    end

    assert_redirected_to timed_form_path(assigns(:timed_form))
  end

  test "should show timed_form" do
    get :show, id: @timed_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timed_form
    assert_response :success
  end

  test "should update timed_form" do
    patch :update, id: @timed_form, timed_form: { begin: @timed_form.begin }
    assert_redirected_to timed_form_path(assigns(:timed_form))
  end

  test "should destroy timed_form" do
    assert_difference('TimedForm.count', -1) do
      delete :destroy, id: @timed_form
    end

    assert_redirected_to timed_forms_path
  end
end
