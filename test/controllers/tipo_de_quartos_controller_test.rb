require 'test_helper'

class TipoDeQuartosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_quarto = tipo_de_quartos(:one)
  end

  test "should get index" do
    get tipo_de_quartos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_quarto_url
    assert_response :success
  end

  test "should create tipo_de_quarto" do
    assert_difference('TipoDeQuarto.count') do
      post tipo_de_quartos_url, params: { tipo_de_quarto: { hotel_id: @tipo_de_quarto.hotel_id, nome: @tipo_de_quarto.nome, valor_diaria: @tipo_de_quarto.valor_diaria } }
    end

    assert_redirected_to tipo_de_quarto_url(TipoDeQuarto.last)
  end

  test "should show tipo_de_quarto" do
    get tipo_de_quarto_url(@tipo_de_quarto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_quarto_url(@tipo_de_quarto)
    assert_response :success
  end

  test "should update tipo_de_quarto" do
    patch tipo_de_quarto_url(@tipo_de_quarto), params: { tipo_de_quarto: { hotel_id: @tipo_de_quarto.hotel_id, nome: @tipo_de_quarto.nome, valor_diaria: @tipo_de_quarto.valor_diaria } }
    assert_redirected_to tipo_de_quarto_url(@tipo_de_quarto)
  end

  test "should destroy tipo_de_quarto" do
    assert_difference('TipoDeQuarto.count', -1) do
      delete tipo_de_quarto_url(@tipo_de_quarto)
    end

    assert_redirected_to tipo_de_quartos_url
  end
end
