defmodule PokecardsTest do
  use ExUnit.Case
  doctest Pokecards

  describe "Deck Manipulation" do
    @describetag :pokecard

    test "should create 15 cards" do
      deck_length = length(Pokecards.create_deck)
      assert deck_length == 15
    end

    test "should shuffle a deck" do
      deck = Pokecards.create_deck
      refute deck == Pokecards.shuffle(deck)
    end
  end
end
