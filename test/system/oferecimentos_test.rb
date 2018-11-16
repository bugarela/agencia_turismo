require "application_system_test_case"

class OferecimentosTest < ApplicationSystemTestCase
  setup do
    @oferecimento = oferecimentos(:one)
  end

  test "visiting the index" do
    visit oferecimentos_url
    assert_selector "h1", text: "Oferecimentos"
  end

  test "creating a Oferecimento" do
    visit oferecimentos_url
    click_on "New Oferecimento"

    fill_in "Atracao", with: @oferecimento.atracao_id
    fill_in "Pacote", with: @oferecimento.pacote_id
    click_on "Create Oferecimento"

    assert_text "Oferecimento was successfully created"
    click_on "Back"
  end

  test "updating a Oferecimento" do
    visit oferecimentos_url
    click_on "Edit", match: :first

    fill_in "Atracao", with: @oferecimento.atracao_id
    fill_in "Pacote", with: @oferecimento.pacote_id
    click_on "Update Oferecimento"

    assert_text "Oferecimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferecimento" do
    visit oferecimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferecimento was successfully destroyed"
  end
end
