require "application_system_test_case"

class MuseusTest < ApplicationSystemTestCase
  setup do
    @museu = museus(:one)
  end

  test "visiting the index" do
    visit museus_url
    assert_selector "h1", text: "Museus"
  end

  test "creating a Museu" do
    visit museus_url
    click_on "New Museu"

    fill_in "Cidade", with: @museu.cidade_id
    fill_in "Data Fundacao", with: @museu.data_fundacao
    fill_in "Descricao", with: @museu.descricao
    fill_in "Endereco", with: @museu.endereco_id
    fill_in "N Salas", with: @museu.n_salas
    click_on "Create Museu"

    assert_text "Museu was successfully created"
    click_on "Back"
  end

  test "updating a Museu" do
    visit museus_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @museu.cidade_id
    fill_in "Data Fundacao", with: @museu.data_fundacao
    fill_in "Descricao", with: @museu.descricao
    fill_in "Endereco", with: @museu.endereco_id
    fill_in "N Salas", with: @museu.n_salas
    click_on "Update Museu"

    assert_text "Museu was successfully updated"
    click_on "Back"
  end

  test "destroying a Museu" do
    visit museus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Museu was successfully destroyed"
  end
end
