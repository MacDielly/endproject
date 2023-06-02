require "test_helper"

class PotinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potin = potins(:one)
  end

  test "should get index" do
    get potins_url
    assert_response :success
  end

  test "should get new" do
    get new_potin_url
    assert_response :success
  end

  test "should create potin" do
    assert_difference("Potin.count") do
      post potins_url, params: { potin: { auteur: @potin.auteur, contenu: @potin.contenu, titre: @potin.titre } }
    end

    assert_redirected_to potin_url(Potin.last)
  end

  test "should show potin" do
    get potin_url(@potin)
    assert_response :success
  end

  test "should get edit" do
    get edit_potin_url(@potin)
    assert_response :success
  end

  test "should update potin" do
    patch potin_url(@potin), params: { potin: { auteur: @potin.auteur, contenu: @potin.contenu, titre: @potin.titre } }
    assert_redirected_to potin_url(@potin)
  end

  test "should destroy potin" do
    assert_difference("Potin.count", -1) do
      delete potin_url(@potin)
    end

    assert_redirected_to potins_url
  end
end
