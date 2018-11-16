require 'test_helper'

class AtracoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atracao = atracoes(:one)
  end

  test "should get index" do
    get atracoes_url
    assert_response :success
  end

  test "should get new" do
    get new_atracao_url
    assert_response :success
  end

  test "should create atracao" do
    assert_difference('Atracao.count') do
      post atracoes_url, params: { atracao: { descricao: @atracao.descricao, dia_visita: @atracao.dia_visita, endereco_id: @atracao.endereco_id, turistico_id: @atracao.turistico_id, turistico_type: @atracao.turistico_type } }
    end

    assert_redirected_to atracao_url(Atracao.last)
  end

  test "should show atracao" do
    get atracao_url(@atracao)
    assert_response :success
  end

  test "should get edit" do
    get edit_atracao_url(@atracao)
    assert_response :success
  end

  test "should update atracao" do
    patch atracao_url(@atracao), params: { atracao: { descricao: @atracao.descricao, dia_visita: @atracao.dia_visita, endereco_id: @atracao.endereco_id, turistico_id: @atracao.turistico_id, turistico_type: @atracao.turistico_type } }
    assert_redirected_to atracao_url(@atracao)
  end

  test "should destroy atracao" do
    assert_difference('Atracao.count', -1) do
      delete atracao_url(@atracao)
    end

    assert_redirected_to atracoes_url
  end
end
