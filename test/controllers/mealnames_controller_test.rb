require 'test_helper'

class MealnamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mealnames_index_url
    assert_response :success
  end

  test "should get new" do
    get mealnames_new_url
    assert_response :success
  end

  test "should get create" do
    get mealnames_create_url
    assert_response :success
  end

  test "should get edit" do
    get mealnames_edit_url
    assert_response :success
  end

  test "should get update" do
    get mealnames_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mealnames_destroy_url
    assert_response :success
  end

end
