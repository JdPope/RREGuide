require 'test_helper'

class ExpectationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expectation = expectations(:one)
  end

  test "should get index" do
    get expectations_url, as: :json
    assert_response :success
  end

  test "should create expectation" do
    assert_difference('Expectation.count') do
      post expectations_url, params: { expectation: { name: @expectation.name } }, as: :json
    end

    assert_response 201
  end

  test "should show expectation" do
    get expectation_url(@expectation), as: :json
    assert_response :success
  end

  test "should update expectation" do
    patch expectation_url(@expectation), params: { expectation: { name: @expectation.name } }, as: :json
    assert_response 200
  end

  test "should destroy expectation" do
    assert_difference('Expectation.count', -1) do
      delete expectation_url(@expectation), as: :json
    end

    assert_response 204
  end
end
