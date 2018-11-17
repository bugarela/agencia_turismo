require 'test_helper'

class RestaurantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurante = restaurantes(:one)
  end

  test "should get index" do
    get restaurantes_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurante_url
    assert_response :success
  end

  test "should create restaurante" do
    assert_difference('Restaurante.count') do
      post restaurantes_url, params: { restaurante: { categoria: @restaurante.categoria, cidade_id: @restaurante.cidade_id, endereco_id: @restaurante.endereco_id, hotel_id: @restaurante.hotel_id, nome: @restaurante.nome } }
    end

    assert_redirected_to restaurante_url(Restaurante.last)
  end

  test "should show restaurante" do
    get restaurante_url(@restaurante)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurante_url(@restaurante)
    assert_response :success
  end

  test "should update restaurante" do
    patch restaurante_url(@restaurante), params: { restaurante: { categoria: @restaurante.categoria, cidade_id: @restaurante.cidade_id, endereco_id: @restaurante.endereco_id, hotel_id: @restaurante.hotel_id, nome: @restaurante.nome } }
    assert_redirected_to restaurante_url(@restaurante)
  end

  test "should destroy restaurante" do
    assert_difference('Restaurante.count', -1) do
      delete restaurante_url(@restaurante)
    end

    assert_redirected_to restaurantes_url
  end
end
