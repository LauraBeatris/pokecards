defmodule Pokecards do
  require Pokemon

  def create_deck do
    pokemons = [
      %Pokemon{name: "Pikachu", ability: "Static"},
      %Pokemon{name: "Bulbasaur", ability: "Overgrow"},
      %Pokemon{name: "Piplup", ability: "Torrent"}
    ]
    damages = ["10", "20", "30", "40", "50"]

    for pokemon <- pokemons, damage <- damages do
      "Name: #{pokemon.name}, Ability: #{pokemon.ability}, Damage: #{damage}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def constains?(deck, pokemon) do
    Enum.member?(deck, pokemon)
  end
end
