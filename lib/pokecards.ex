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

  def deal(deck, hand_size) do
    { hand, _rest_of_deck } = Enum.split(deck, hand_size)
    hand
  end

  def save(deckname, deck) do
    binary = :erlang.term_to_binary(deck)
    File.write!("decks/#{deckname}", binary)
  end
end
