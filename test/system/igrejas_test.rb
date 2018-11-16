require "application_system_test_case"

class IgrejasTest < ApplicationSystemTestCase
  setup do
    @igreja = igrejas(:one)
  end

  test "visiting the index" do
    visit igrejas_url
    assert_selector "h1", text: "Igrejas"
  end

  test "creating a Igreja" do
    visit igrejas_url
    click_on "New Igreja"

    fill_in "Data Construcao", with: @igreja.data_construcao
    fill_in "Estilo Construcao", with: @igreja.estilo_construcao
    click_on "Create Igreja"

    assert_text "Igreja was successfully created"
    click_on "Back"
  end

  test "updating a Igreja" do
    visit igrejas_url
    click_on "Edit", match: :first

    fill_in "Data Construcao", with: @igreja.data_construcao
    fill_in "Estilo Construcao", with: @igreja.estilo_construcao
    click_on "Update Igreja"

    assert_text "Igreja was successfully updated"
    click_on "Back"
  end

  test "destroying a Igreja" do
    visit igrejas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Igreja was successfully destroyed"
  end
end
