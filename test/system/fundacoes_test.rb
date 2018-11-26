require "application_system_test_case"

class FundacoesTest < ApplicationSystemTestCase
  setup do
    @fundacao = fundacoes(:one)
  end

  test "visiting the index" do
    visit fundacoes_url
    assert_selector "h1", text: "Fundacoes"
  end

  test "creating a Fundacao" do
    visit fundacoes_url
    click_on "New Fundacao"

    fill_in "Fundador", with: @fundacao.fundador_id
    fill_in "Museu", with: @fundacao.museu_id
    click_on "Create Fundacao"

    assert_text "Fundacao was successfully created"
    click_on "Back"
  end

  test "updating a Fundacao" do
    visit fundacoes_url
    click_on "Edit", match: :first

    fill_in "Fundador", with: @fundacao.fundador_id
    fill_in "Museu", with: @fundacao.museu_id
    click_on "Update Fundacao"

    assert_text "Fundacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Fundacao" do
    visit fundacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fundacao was successfully destroyed"
  end
end
