require "application_system_test_case"

class AtracoesTest < ApplicationSystemTestCase
  setup do
    @atracao = atracoes(:one)
  end

  test "visiting the index" do
    visit atracoes_url
    assert_selector "h1", text: "Atracoes"
  end

  test "creating a Atracao" do
    visit atracoes_url
    click_on "New Atracao"

    fill_in "Descricao", with: @atracao.descricao
    fill_in "Dia Visita", with: @atracao.dia_visita
    fill_in "Endereco", with: @atracao.endereco_id
    fill_in "Turistico", with: @atracao.turistico_id
    fill_in "Turistico Type", with: @atracao.turistico_type
    click_on "Create Atracao"

    assert_text "Atracao was successfully created"
    click_on "Back"
  end

  test "updating a Atracao" do
    visit atracoes_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @atracao.descricao
    fill_in "Dia Visita", with: @atracao.dia_visita
    fill_in "Endereco", with: @atracao.endereco_id
    fill_in "Turistico", with: @atracao.turistico_id
    fill_in "Turistico Type", with: @atracao.turistico_type
    click_on "Update Atracao"

    assert_text "Atracao was successfully updated"
    click_on "Back"
  end

  test "destroying a Atracao" do
    visit atracoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atracao was successfully destroyed"
  end
end
