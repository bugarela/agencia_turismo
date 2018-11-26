require "application_system_test_case"

class CasaDeShowsTest < ApplicationSystemTestCase
  setup do
    @casa_de_show = casa_de_shows(:one)
  end

  test "visiting the index" do
    visit casa_de_shows_url
    assert_selector "h1", text: "Casa De Shows"
  end

  test "creating a Casa de show" do
    visit casa_de_shows_url
    click_on "New Casa De Show"

    fill_in "Cidade", with: @casa_de_show.cidade_id
    fill_in "Descricao", with: @casa_de_show.descricao
    fill_in "Dia Fechamento", with: @casa_de_show.dia_fechamento
    fill_in "Endereco", with: @casa_de_show.endereco_id
    fill_in "Hora Inicio", with: @casa_de_show.hora_inicio
    click_on "Create Casa de show"

    assert_text "Casa de show was successfully created"
    click_on "Back"
  end

  test "updating a Casa de show" do
    visit casa_de_shows_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @casa_de_show.cidade_id
    fill_in "Descricao", with: @casa_de_show.descricao
    fill_in "Dia Fechamento", with: @casa_de_show.dia_fechamento
    fill_in "Endereco", with: @casa_de_show.endereco_id
    fill_in "Hora Inicio", with: @casa_de_show.hora_inicio
    click_on "Update Casa de show"

    assert_text "Casa de show was successfully updated"
    click_on "Back"
  end

  test "destroying a Casa de show" do
    visit casa_de_shows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Casa de show was successfully destroyed"
  end
end
