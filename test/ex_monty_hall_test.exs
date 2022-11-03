defmodule ExMontyHallTest do
  use ExUnit.Case
  doctest ExMontyHall

  test "greets the world" do
    assert ExMontyHall.hello() == :world
  end
end
