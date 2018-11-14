require "application_system_test_case"

class CidadesTest < ApplicationSystemTestCase
  setup do
    @cidade = cidades(:one)
  end

  test "visiting the index" do
    visit cidades_url
    assert_selector "h1", text: "Cidades"
  end

  test "creating a Cidade" do
    visit cidades_url
    click_on "New Cidade"

    fill_in "Estado", with: @cidade.estado
    fill_in "Nome", with: @cidade.nome
    fill_in "Populacao", with: @cidade.populacao
    click_on "Create Cidade"

    assert_text "Cidade was successfully created"
    click_on "Back"
  end

  test "updating a Cidade" do
    visit cidades_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @cidade.estado
    fill_in "Nome", with: @cidade.nome
    fill_in "Populacao", with: @cidade.populacao
    click_on "Update Cidade"

    assert_text "Cidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Cidade" do
    visit cidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cidade was successfully destroyed"
  end
end
