require 'test_helper'

class FundacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundacao = fundacoes(:one)
  end

  test "should get index" do
    get fundacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_fundacao_url
    assert_response :success
  end

  test "should create fundacao" do
    assert_difference('Fundacao.count') do
      post fundacoes_url, params: { fundacao: { fundador_id: @fundacao.fundador_id, museu_id: @fundacao.museu_id } }
    end

    assert_redirected_to fundacao_url(Fundacao.last)
  end

  test "should show fundacao" do
    get fundacao_url(@fundacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundacao_url(@fundacao)
    assert_response :success
  end

  test "should update fundacao" do
    patch fundacao_url(@fundacao), params: { fundacao: { fundador_id: @fundacao.fundador_id, museu_id: @fundacao.museu_id } }
    assert_redirected_to fundacao_url(@fundacao)
  end

  test "should destroy fundacao" do
    assert_difference('Fundacao.count', -1) do
      delete fundacao_url(@fundacao)
    end

    assert_redirected_to fundacoes_url
  end
end
