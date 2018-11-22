require 'test_helper'

class ParquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parque = parques(:one)
  end

  test "should get index" do
    get parques_url
    assert_response :success
  end

  test "should get new" do
    get new_parque_url
    assert_response :success
  end

  test "should create parque" do
    assert_difference('Parque.count') do
      post parques_url, params: { parque: { cidade_id: @parque.cidade_id, descricao: @parque.descricao, endereco_id: @parque.endereco_id } }
    end

    assert_redirected_to parque_url(Parque.last)
  end

  test "should show parque" do
    get parque_url(@parque)
    assert_response :success
  end

  test "should get edit" do
    get edit_parque_url(@parque)
    assert_response :success
  end

  test "should update parque" do
    patch parque_url(@parque), params: { parque: { cidade_id: @parque.cidade_id, descricao: @parque.descricao, endereco_id: @parque.endereco_id } }
    assert_redirected_to parque_url(@parque)
  end

  test "should destroy parque" do
    assert_difference('Parque.count', -1) do
      delete parque_url(@parque)
    end

    assert_redirected_to parques_url
  end
end
