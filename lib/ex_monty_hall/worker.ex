defmodule ExMontyHall.Worker do

  alias ExMontyHall.Worker.State

  def run(%State{switch: switch, player_choice: pl_choice, doors: doors} = state) do
    {d_key, d_val} =
      Enum.find(doors, fn {key, val} -> key == :goat and val != pl_choice end)

    left_doors = Enum.filter(doors, fn {key, val} -> !(key == d_key and val == d_val) end)


    result =
      if switch do
        Enum.flat_map(left_doors, fn {key, val} -> if val != pl_choice, do: [key], else: []; end)
      else
        Enum.flat_map(left_doors, fn {key, val} -> if val == pl_choice, do: [key], else: []; end)
      end
  end

end
