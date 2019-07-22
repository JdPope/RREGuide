require 'test_helper'

class ResponsibilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsibility = responsibilities(:one)
  end

  test "should get index" do
    get responsibilities_url, as: :json
    assert_response :success
  end

  test "should create responsibility" do
    assert_difference('Responsibility.count') do
      post responsibilities_url, params: { responsibility: { name: @responsibility.name } }, as: :json
    end

    assert_response 201
  end

  test "should show responsibility" do
    get responsibility_url(@responsibility), as: :json
    assert_response :success
  end

  test "should update responsibility" do
    patch responsibility_url(@responsibility), params: { responsibility: { name: @responsibility.name } }, as: :json
    assert_response 200
  end

  test "should destroy responsibility" do
    assert_difference('Responsibility.count', -1) do
      delete responsibility_url(@responsibility), as: :json
    end

    assert_response 204
  end
end
