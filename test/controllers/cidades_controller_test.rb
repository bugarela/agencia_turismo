require 'test_helper'

class CidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cidade = cidades(:one)
  end

  test "should get index" do
    get cidades_url
    assert_response :success
  end

  test "should get new" do
    get new_cidade_url
    assert_response :success
  end

  test "should create cidade" do
    assert_difference('Cidade.count') do
      post cidades_url, params: { cidade: { estado: @cidade.estado, nome: @cidade.nome, populacao: @cidade.populacao } }
    end

    assert_redirected_to cidade_url(Cidade.last)
  end

  test "should show cidade" do
    get cidade_url(@cidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_cidade_url(@cidade)
    assert_response :success
  end

  test "should update cidade" do
    patch cidade_url(@cidade), params: { cidade: { estado: @cidade.estado, nome: @cidade.nome, populacao: @cidade.populacao } }
    assert_redirected_to cidade_url(@cidade)
  end

  test "should destroy cidade" do
    assert_difference('Cidade.count', -1) do
      delete cidade_url(@cidade)
    end

    assert_redirected_to cidades_url
  end
end
