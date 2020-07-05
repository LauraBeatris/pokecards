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
    try do
      binary = :erlang.term_to_binary(deck)
      File.write!("decks/#{deckname}", binary)
    rescue
      error in RuntimeError -> IO.puts("An error ocurred: #{error.message}")
    end
  end

  def load(deckname) do
    try do
      case File.read("decks/#{deckname}") do
        { :ok, binary } -> :erlang.binary_to_term(binary)
        { :error, _reason } -> raise "This file doesn't exists. Did you right the correct pathname?"
      end
    rescue
      error in RuntimeError -> IO.puts("An error ocurred: #{error.message}")
    end
  end

  def create_hand(hand_size) do
    if (!hand_size) do
      raise "You must provide the size of the deck hand"
    end

    Pokecards.create_deck
    |> Pokecards.shuffle
    |> Pokecards.deal(hand_size)
  end
end
