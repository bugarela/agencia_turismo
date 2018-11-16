require 'test_helper'

class IgrejasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @igreja = igrejas(:one)
  end

  test "should get index" do
    get igrejas_url
    assert_response :success
  end

  test "should get new" do
    get new_igreja_url
    assert_response :success
  end

  test "should create igreja" do
    assert_difference('Igreja.count') do
      post igrejas_url, params: { igreja: { data_construcao: @igreja.data_construcao, estilo_construcao: @igreja.estilo_construcao } }
    end

    assert_redirected_to igreja_url(Igreja.last)
  end

  test "should show igreja" do
    get igreja_url(@igreja)
    assert_response :success
  end

  test "should get edit" do
    get edit_igreja_url(@igreja)
    assert_response :success
  end

  test "should update igreja" do
    patch igreja_url(@igreja), params: { igreja: { data_construcao: @igreja.data_construcao, estilo_construcao: @igreja.estilo_construcao } }
    assert_redirected_to igreja_url(@igreja)
  end

  test "should destroy igreja" do
    assert_difference('Igreja.count', -1) do
      delete igreja_url(@igreja)
    end

    assert_redirected_to igrejas_url
  end
end
