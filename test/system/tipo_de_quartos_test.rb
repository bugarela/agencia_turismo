require "application_system_test_case"

class TipoDeQuartosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_quarto = tipo_de_quartos(:one)
  end

  test "visiting the index" do
    visit tipo_de_quartos_url
    assert_selector "h1", text: "Tipo De Quartos"
  end

  test "creating a Tipo de quarto" do
    visit tipo_de_quartos_url
    click_on "New Tipo De Quarto"

    fill_in "Hotel", with: @tipo_de_quarto.hotel_id
    fill_in "Nome", with: @tipo_de_quarto.nome
    fill_in "Valor Diaria", with: @tipo_de_quarto.valor_diaria
    click_on "Create Tipo de quarto"

    assert_text "Tipo de quarto was successfully created"
    click_on "Back"
  end

  test "updating a Tipo de quarto" do
    visit tipo_de_quartos_url
    click_on "Edit", match: :first

    fill_in "Hotel", with: @tipo_de_quarto.hotel_id
    fill_in "Nome", with: @tipo_de_quarto.nome
    fill_in "Valor Diaria", with: @tipo_de_quarto.valor_diaria
    click_on "Update Tipo de quarto"

    assert_text "Tipo de quarto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo de quarto" do
    visit tipo_de_quartos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo de quarto was successfully destroyed"
  end
end
