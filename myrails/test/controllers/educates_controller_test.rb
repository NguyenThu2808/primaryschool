require 'test_helper'

class EducatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educate = educates(:one)
  end

  test "should get index" do
    get educates_url
    assert_response :success
  end

  test "should get new" do
    get new_educate_url
    assert_response :success
  end

  test "should create educate" do
    assert_difference('Educate.count') do
      post educates_url, params: { educate: { content: @educate.content, name: @educate.name, picture: @educate.picture } }
    end

    assert_redirected_to educate_url(Educate.last)
  end

  test "should show educate" do
    get educate_url(@educate)
    assert_response :success
  end

  test "should get edit" do
    get edit_educate_url(@educate)
    assert_response :success
  end

  test "should update educate" do
    patch educate_url(@educate), params: { educate: { content: @educate.content, name: @educate.name, picture: @educate.picture } }
    assert_redirected_to educate_url(@educate)
  end

  test "should destroy educate" do
    assert_difference('Educate.count', -1) do
      delete educate_url(@educate)
    end

    assert_redirected_to educates_url
  end
end
