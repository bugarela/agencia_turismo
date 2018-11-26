require "application_system_test_case"

class FundadoresTest < ApplicationSystemTestCase
  setup do
    @fundador = fundadores(:one)
  end

  test "visiting the index" do
    visit fundadores_url
    assert_selector "h1", text: "Fundadores"
  end

  test "creating a Fundador" do
    visit fundadores_url
    click_on "New Fundador"

    fill_in "Atividade", with: @fundador.atividade
    fill_in "Data Morte", with: @fundador.data_morte
    fill_in "Data Nasc", with: @fundador.data_nasc
    fill_in "Nacionalidade", with: @fundador.nacionalidade
    fill_in "Nome", with: @fundador.nome
    click_on "Create Fundador"

    assert_text "Fundador was successfully created"
    click_on "Back"
  end

  test "updating a Fundador" do
    visit fundadores_url
    click_on "Edit", match: :first

    fill_in "Atividade", with: @fundador.atividade
    fill_in "Data Morte", with: @fundador.data_morte
    fill_in "Data Nasc", with: @fundador.data_nasc
    fill_in "Nacionalidade", with: @fundador.nacionalidade
    fill_in "Nome", with: @fundador.nome
    click_on "Update Fundador"

    assert_text "Fundador was successfully updated"
    click_on "Back"
  end

  test "destroying a Fundador" do
    visit fundadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fundador was successfully destroyed"
  end
end
