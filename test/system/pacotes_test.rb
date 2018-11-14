require "application_system_test_case"

class PacotesTest < ApplicationSystemTestCase
  setup do
    @pacote = pacotes(:one)
  end

  test "visiting the index" do
    visit pacotes_url
    assert_selector "h1", text: "Pacotes"
  end

  test "creating a Pacote" do
    visit pacotes_url
    click_on "New Pacote"

    fill_in "Cidade", with: @pacote.cidade_id
    fill_in "Data Fim", with: @pacote.data_fim
    fill_in "Data Inicio", with: @pacote.data_inicio
    fill_in "Valor", with: @pacote.valor
    click_on "Create Pacote"

    assert_text "Pacote was successfully created"
    click_on "Back"
  end

  test "updating a Pacote" do
    visit pacotes_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @pacote.cidade_id
    fill_in "Data Fim", with: @pacote.data_fim
    fill_in "Data Inicio", with: @pacote.data_inicio
    fill_in "Valor", with: @pacote.valor
    click_on "Update Pacote"

    assert_text "Pacote was successfully updated"
    click_on "Back"
  end

  test "destroying a Pacote" do
    visit pacotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pacote was successfully destroyed"
  end
end
