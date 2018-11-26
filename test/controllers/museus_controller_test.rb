require 'test_helper'

class MuseusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @museu = museus(:one)
  end

  test "should get index" do
    get museus_url
    assert_response :success
  end

  test "should get new" do
    get new_museu_url
    assert_response :success
  end

  test "should create museu" do
    assert_difference('Museu.count') do
      post museus_url, params: { museu: { cidade_id: @museu.cidade_id, data_fundacao: @museu.data_fundacao, descricao: @museu.descricao, endereco_id: @museu.endereco_id, n_salas: @museu.n_salas } }
    end

    assert_redirected_to museu_url(Museu.last)
  end

  test "should show museu" do
    get museu_url(@museu)
    assert_response :success
  end

  test "should get edit" do
    get edit_museu_url(@museu)
    assert_response :success
  end

  test "should update museu" do
    patch museu_url(@museu), params: { museu: { cidade_id: @museu.cidade_id, data_fundacao: @museu.data_fundacao, descricao: @museu.descricao, endereco_id: @museu.endereco_id, n_salas: @museu.n_salas } }
    assert_redirected_to museu_url(@museu)
  end

  test "should destroy museu" do
    assert_difference('Museu.count', -1) do
      delete museu_url(@museu)
    end

    assert_redirected_to museus_url
  end
end
