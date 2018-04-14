require 'test_helper'

class JiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jio = jios(:one)
  end

  test "should get index" do
    get jios_url
    assert_response :success
  end

  test "should get new" do
    get new_jio_url
    assert_response :success
  end

  test "should create jio" do
    assert_difference('Jio.count') do
      post jios_url, params: { jio: { contact_number: @jio.contact_number, name: @jio.name } }
    end

    assert_redirected_to jio_url(Jio.last)
  end

  test "should show jio" do
    get jio_url(@jio)
    assert_response :success
  end

  test "should get edit" do
    get edit_jio_url(@jio)
    assert_response :success
  end

  test "should update jio" do
    patch jio_url(@jio), params: { jio: { contact_number: @jio.contact_number, name: @jio.name } }
    assert_redirected_to jio_url(@jio)
  end

  test "should destroy jio" do
    assert_difference('Jio.count', -1) do
      delete jio_url(@jio)
    end

    assert_redirected_to jios_url
  end
end
