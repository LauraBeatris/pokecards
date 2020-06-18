defmodule Pokecards do
  def create_deck do
    ["Pikachu", "Bulbasaur", "Piplup"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def constains?(deck, pokemon) do
    Enum.member?(deck, pokemon)
  end
end
