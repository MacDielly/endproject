require "application_system_test_case"

class PotinsTest < ApplicationSystemTestCase
  setup do
    @potin = potins(:one)
  end

  test "visiting the index" do
    visit potins_url
    assert_selector "h1", text: "Potins"
  end

  test "should create potin" do
    visit potins_url
    click_on "New potin"

    fill_in "Auteur", with: @potin.auteur
    fill_in "Contenu", with: @potin.contenu
    fill_in "Titre", with: @potin.titre
    click_on "Create Potin"

    assert_text "Potin was successfully created"
    click_on "Back"
  end

  test "should update Potin" do
    visit potin_url(@potin)
    click_on "Edit this potin", match: :first

    fill_in "Auteur", with: @potin.auteur
    fill_in "Contenu", with: @potin.contenu
    fill_in "Titre", with: @potin.titre
    click_on "Update Potin"

    assert_text "Potin was successfully updated"
    click_on "Back"
  end

  test "should destroy Potin" do
    visit potin_url(@potin)
    click_on "Destroy this potin", match: :first

    assert_text "Potin was successfully destroyed"
  end
end
