require 'test_helper'

class PacotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacote = pacotes(:one)
  end

  test "should get index" do
    get pacotes_url
    assert_response :success
  end

  test "should get new" do
    get new_pacote_url
    assert_response :success
  end

  test "should create pacote" do
    assert_difference('Pacote.count') do
      post pacotes_url, params: { pacote: { cidade_id: @pacote.cidade_id, data_fim: @pacote.data_fim, data_inicio: @pacote.data_inicio, valor: @pacote.valor } }
    end

    assert_redirected_to pacote_url(Pacote.last)
  end

  test "should show pacote" do
    get pacote_url(@pacote)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacote_url(@pacote)
    assert_response :success
  end

  test "should update pacote" do
    patch pacote_url(@pacote), params: { pacote: { cidade_id: @pacote.cidade_id, data_fim: @pacote.data_fim, data_inicio: @pacote.data_inicio, valor: @pacote.valor } }
    assert_redirected_to pacote_url(@pacote)
  end

  test "should destroy pacote" do
    assert_difference('Pacote.count', -1) do
      delete pacote_url(@pacote)
    end

    assert_redirected_to pacotes_url
  end
end
