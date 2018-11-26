require "application_system_test_case"

class RestauranteInternosTest < ApplicationSystemTestCase
  setup do
    @restaurante_interno = restaurante_internos(:one)
  end

  test "visiting the index" do
    visit restaurante_internos_url
    assert_selector "h1", text: "Restaurante Internos"
  end

  test "creating a Restaurante interno" do
    visit restaurante_internos_url
    click_on "New Restaurante Interno"

    fill_in "Casa De Show", with: @restaurante_interno.casa_de_show_id
    fill_in "Especialidade", with: @restaurante_interno.especialidade
    fill_in "Preco Medio", with: @restaurante_interno.preco_medio
    click_on "Create Restaurante interno"

    assert_text "Restaurante interno was successfully created"
    click_on "Back"
  end

  test "updating a Restaurante interno" do
    visit restaurante_internos_url
    click_on "Edit", match: :first

    fill_in "Casa De Show", with: @restaurante_interno.casa_de_show_id
    fill_in "Especialidade", with: @restaurante_interno.especialidade
    fill_in "Preco Medio", with: @restaurante_interno.preco_medio
    click_on "Update Restaurante interno"

    assert_text "Restaurante interno was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurante interno" do
    visit restaurante_internos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurante interno was successfully destroyed"
  end
end
