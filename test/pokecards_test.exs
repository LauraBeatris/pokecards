defmodule PokecardsTest do
  use ExUnit.Case
  doctest Pokecards

  test "greets the world" do
    assert Pokecards.hello() == :world
  end
end
