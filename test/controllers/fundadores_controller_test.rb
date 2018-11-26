require 'test_helper'

class FundadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundador = fundadores(:one)
  end

  test "should get index" do
    get fundadores_url
    assert_response :success
  end

  test "should get new" do
    get new_fundador_url
    assert_response :success
  end

  test "should create fundador" do
    assert_difference('Fundador.count') do
      post fundadores_url, params: { fundador: { atividade: @fundador.atividade, data_morte: @fundador.data_morte, data_nasc: @fundador.data_nasc, nacionalidade: @fundador.nacionalidade, nome: @fundador.nome } }
    end

    assert_redirected_to fundador_url(Fundador.last)
  end

  test "should show fundador" do
    get fundador_url(@fundador)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundador_url(@fundador)
    assert_response :success
  end

  test "should update fundador" do
    patch fundador_url(@fundador), params: { fundador: { atividade: @fundador.atividade, data_morte: @fundador.data_morte, data_nasc: @fundador.data_nasc, nacionalidade: @fundador.nacionalidade, nome: @fundador.nome } }
    assert_redirected_to fundador_url(@fundador)
  end

  test "should destroy fundador" do
    assert_difference('Fundador.count', -1) do
      delete fundador_url(@fundador)
    end

    assert_redirected_to fundadores_url
  end
end
