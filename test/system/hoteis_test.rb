require "application_system_test_case"

class HoteisTest < ApplicationSystemTestCase
  setup do
    @hotel = hoteis(:one)
  end

  test "visiting the index" do
    visit hoteis_url
    assert_selector "h1", text: "Hoteis"
  end

  test "creating a Hotel" do
    visit hoteis_url
    click_on "New Hotel"

    fill_in "Categoria", with: @hotel.categoria
    fill_in "Cidade", with: @hotel.cidade_id
    fill_in "Endereco", with: @hotel.endereco_id
    fill_in "Nome", with: @hotel.nome
    click_on "Create Hotel"

    assert_text "Hotel was successfully created"
    click_on "Back"
  end

  test "updating a Hotel" do
    visit hoteis_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @hotel.categoria
    fill_in "Cidade", with: @hotel.cidade_id
    fill_in "Endereco", with: @hotel.endereco_id
    fill_in "Nome", with: @hotel.nome
    click_on "Update Hotel"

    assert_text "Hotel was successfully updated"
    click_on "Back"
  end

  test "destroying a Hotel" do
    visit hoteis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hotel was successfully destroyed"
  end
end
