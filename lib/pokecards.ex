defmodule Pokecards do
  @moduledoc """
    Provides functions to create and handle a deck of pokemons
  """
  @moduledoc since: "0.1.0"

  require Pokemon

  @doc """
  Creates a deck of pokemons

  ## Examples

      iex> deck = Pokecards.create_deck
      iex> deck
  """
  @doc since: "0.1.0"
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

  @doc """
  Shuffles a deck of pokemons

  ## Examples

      iex> deck = Pokecards.create_deck
      iex> deck = Pokecards.shuffle(deck)
      iex> deck
  """
  @doc since: "0.1.0"
  def shuffle(deck) do
    Enum.shuffle(deck)
  end


  @doc """
  Verifies if a `deck` constains a `pokemon`

  ## Examples

      iex> deck = Pokecards.create_deck
      iex> Pokecards.constains?(deck, "Name: Piplup, Ability: Torrent, Damage: 50")
      true
  """
  def constains?(deck, pokemon) do
    Enum.member?(deck, pokemon)
  end

  @doc """
  Deal a deck of pokemons by a given a `hand_size`

  ## Examples

      iex> deck = Pokecards.create_deck
      iex> { hand, _rest_of_hand } = Pokecards.deal(deck, 2)
      iex> length(hand) == 2
      true
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
  Saves a ``deck`` with a given ``deckname`` to the filesystem

  Returns `:ok`

  ## Examples

      iex> deck = Pokecards.create_deck
      iex> Pokecards.save("cardname", deck)
      :ok
  """
  def save(deckname, deck) do
    try do
      binary = :erlang.term_to_binary(deck)
      File.write!("decks/#{deckname}", binary)
    rescue
      error in RuntimeError -> IO.puts("An error ocurred: #{error.message}")
    end
  end

  @doc """
  Loads a deck with the given ``deckname`` from the filesystem

  ## Examples
      iex> deck = Pokecards.load("test")
      iex> deck
  """
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

  @doc """
  Returns a hand of a pokemon deck based on a `hand_size`

  ## Examples
      iex> hand = Pokecards.create_hand(5)
      iex> length(hand) == 5
      true
  """
  def create_hand(hand_size) do
    if (!hand_size) do
      raise "You must provide the size of the deck hand"
    end

    { hand, _rest_of_hand } = Pokecards.create_deck
    |> Pokecards.shuffle
    |> Pokecards.deal(hand_size)

    hand
  end
end
