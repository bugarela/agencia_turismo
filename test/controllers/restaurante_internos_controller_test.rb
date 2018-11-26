require 'test_helper'

class RestauranteInternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurante_interno = restaurante_internos(:one)
  end

  test "should get index" do
    get restaurante_internos_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurante_interno_url
    assert_response :success
  end

  test "should create restaurante_interno" do
    assert_difference('RestauranteInterno.count') do
      post restaurante_internos_url, params: { restaurante_interno: { casa_de_show_id: @restaurante_interno.casa_de_show_id, especialidade: @restaurante_interno.especialidade, preco_medio: @restaurante_interno.preco_medio } }
    end

    assert_redirected_to restaurante_interno_url(RestauranteInterno.last)
  end

  test "should show restaurante_interno" do
    get restaurante_interno_url(@restaurante_interno)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurante_interno_url(@restaurante_interno)
    assert_response :success
  end

  test "should update restaurante_interno" do
    patch restaurante_interno_url(@restaurante_interno), params: { restaurante_interno: { casa_de_show_id: @restaurante_interno.casa_de_show_id, especialidade: @restaurante_interno.especialidade, preco_medio: @restaurante_interno.preco_medio } }
    assert_redirected_to restaurante_interno_url(@restaurante_interno)
  end

  test "should destroy restaurante_interno" do
    assert_difference('RestauranteInterno.count', -1) do
      delete restaurante_interno_url(@restaurante_interno)
    end

    assert_redirected_to restaurante_internos_url
  end
end
