require "application_system_test_case"

class AnimesTest < ApplicationSystemTestCase
  setup do
    @anime = animes(:one)
  end

  test "visiting the index" do
    visit animes_url
    assert_selector "h1", text: "Animes"
  end

  test "should create anime" do
    visit animes_url
    click_on "New anime"

    check "Atual" if @anime.atual
    fill_in "Episodios", with: @anime.episodios
    fill_in "Nome", with: @anime.nome
    fill_in "Nota", with: @anime.nota
    click_on "Create Anime"

    assert_text "Anime was successfully created"
    click_on "Back"
  end

  test "should update Anime" do
    visit anime_url(@anime)
    click_on "Edit this anime", match: :first

    check "Atual" if @anime.atual
    fill_in "Episodios", with: @anime.episodios
    fill_in "Nome", with: @anime.nome
    fill_in "Nota", with: @anime.nota
    click_on "Update Anime"

    assert_text "Anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Anime" do
    visit anime_url(@anime)
    click_on "Destroy this anime", match: :first

    assert_text "Anime was successfully destroyed"
  end
end
