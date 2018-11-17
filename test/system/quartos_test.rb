require "application_system_test_case"

class QuartosTest < ApplicationSystemTestCase
  setup do
    @quarto = quartos(:one)
  end

  test "visiting the index" do
    visit quartos_url
    assert_selector "h1", text: "Quartos"
  end

  test "creating a Quarto" do
    visit quartos_url
    click_on "New Quarto"

    fill_in "Numero", with: @quarto.numero
    fill_in "Tipo De Quarto", with: @quarto.tipo_de_quarto_id
    click_on "Create Quarto"

    assert_text "Quarto was successfully created"
    click_on "Back"
  end

  test "updating a Quarto" do
    visit quartos_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @quarto.numero
    fill_in "Tipo De Quarto", with: @quarto.tipo_de_quarto_id
    click_on "Update Quarto"

    assert_text "Quarto was successfully updated"
    click_on "Back"
  end

  test "destroying a Quarto" do
    visit quartos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quarto was successfully destroyed"
  end
end
