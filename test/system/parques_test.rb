require "application_system_test_case"

class ParquesTest < ApplicationSystemTestCase
  setup do
    @parque = parques(:one)
  end

  test "visiting the index" do
    visit parques_url
    assert_selector "h1", text: "Parques"
  end

  test "creating a Parque" do
    visit parques_url
    click_on "New Parque"

    fill_in "Cidade", with: @parque.cidade_id
    fill_in "Descricao", with: @parque.descricao
    fill_in "Endereco", with: @parque.endereco_id
    click_on "Create Parque"

    assert_text "Parque was successfully created"
    click_on "Back"
  end

  test "updating a Parque" do
    visit parques_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @parque.cidade_id
    fill_in "Descricao", with: @parque.descricao
    fill_in "Endereco", with: @parque.endereco_id
    click_on "Update Parque"

    assert_text "Parque was successfully updated"
    click_on "Back"
  end

  test "destroying a Parque" do
    visit parques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parque was successfully destroyed"
  end
end
