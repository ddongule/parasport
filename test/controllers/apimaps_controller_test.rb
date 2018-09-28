require 'test_helper'

class ApimapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apimap = apimaps(:one)
  end

  test "should get index" do
    get apimaps_url
    assert_response :success
  end

  test "should get new" do
    get new_apimap_url
    assert_response :success
  end

  test "should create apimap" do
    assert_difference('Apimap.count') do
      post apimaps_url, params: { apimap: { latitude: @apimap.latitude, longitude: @apimap.longitude, name: @apimap.name } }
    end

    assert_redirected_to apimap_url(Apimap.last)
  end

  test "should show apimap" do
    get apimap_url(@apimap)
    assert_response :success
  end

  test "should get edit" do
    get edit_apimap_url(@apimap)
    assert_response :success
  end

  test "should update apimap" do
    patch apimap_url(@apimap), params: { apimap: { latitude: @apimap.latitude, longitude: @apimap.longitude, name: @apimap.name } }
    assert_redirected_to apimap_url(@apimap)
  end

  test "should destroy apimap" do
    assert_difference('Apimap.count', -1) do
      delete apimap_url(@apimap)
    end

    assert_redirected_to apimaps_url
  end
end
