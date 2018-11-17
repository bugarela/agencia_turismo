require 'test_helper'

class HoteisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel = hoteis(:one)
  end

  test "should get index" do
    get hoteis_url
    assert_response :success
  end

  test "should get new" do
    get new_hotel_url
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post hoteis_url, params: { hotel: { categoria: @hotel.categoria, cidade_id: @hotel.cidade_id, endereco_id: @hotel.endereco_id, nome: @hotel.nome } }
    end

    assert_redirected_to hotel_url(Hotel.last)
  end

  test "should show hotel" do
    get hotel_url(@hotel)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotel_url(@hotel)
    assert_response :success
  end

  test "should update hotel" do
    patch hotel_url(@hotel), params: { hotel: { categoria: @hotel.categoria, cidade_id: @hotel.cidade_id, endereco_id: @hotel.endereco_id, nome: @hotel.nome } }
    assert_redirected_to hotel_url(@hotel)
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete hotel_url(@hotel)
    end

    assert_redirected_to hoteis_url
  end
end
