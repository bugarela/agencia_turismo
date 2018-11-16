require 'test_helper'

class OferecimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferecimento = oferecimentos(:one)
  end

  test "should get index" do
    get oferecimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_oferecimento_url
    assert_response :success
  end

  test "should create oferecimento" do
    assert_difference('Oferecimento.count') do
      post oferecimentos_url, params: { oferecimento: { atracao_id: @oferecimento.atracao_id, pacote_id: @oferecimento.pacote_id } }
    end

    assert_redirected_to oferecimento_url(Oferecimento.last)
  end

  test "should show oferecimento" do
    get oferecimento_url(@oferecimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferecimento_url(@oferecimento)
    assert_response :success
  end

  test "should update oferecimento" do
    patch oferecimento_url(@oferecimento), params: { oferecimento: { atracao_id: @oferecimento.atracao_id, pacote_id: @oferecimento.pacote_id } }
    assert_redirected_to oferecimento_url(@oferecimento)
  end

  test "should destroy oferecimento" do
    assert_difference('Oferecimento.count', -1) do
      delete oferecimento_url(@oferecimento)
    end

    assert_redirected_to oferecimentos_url
  end
end
