require 'test_helper'

class CasaDeShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casa_de_show = casa_de_shows(:one)
  end

  test "should get index" do
    get casa_de_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_casa_de_show_url
    assert_response :success
  end

  test "should create casa_de_show" do
    assert_difference('CasaDeShow.count') do
      post casa_de_shows_url, params: { casa_de_show: { cidade_id: @casa_de_show.cidade_id, descricao: @casa_de_show.descricao, dia_fechamento: @casa_de_show.dia_fechamento, endereco_id: @casa_de_show.endereco_id, hora_inicio: @casa_de_show.hora_inicio } }
    end

    assert_redirected_to casa_de_show_url(CasaDeShow.last)
  end

  test "should show casa_de_show" do
    get casa_de_show_url(@casa_de_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_casa_de_show_url(@casa_de_show)
    assert_response :success
  end

  test "should update casa_de_show" do
    patch casa_de_show_url(@casa_de_show), params: { casa_de_show: { cidade_id: @casa_de_show.cidade_id, descricao: @casa_de_show.descricao, dia_fechamento: @casa_de_show.dia_fechamento, endereco_id: @casa_de_show.endereco_id, hora_inicio: @casa_de_show.hora_inicio } }
    assert_redirected_to casa_de_show_url(@casa_de_show)
  end

  test "should destroy casa_de_show" do
    assert_difference('CasaDeShow.count', -1) do
      delete casa_de_show_url(@casa_de_show)
    end

    assert_redirected_to casa_de_shows_url
  end
end
