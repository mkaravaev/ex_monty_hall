defmodule ExMontyHall.Worker do
  alias ExMontyHall.Worker.State

  def run(%State{switch?: switch, player_choice: player_choice, doors: doors}) do
    doors
    |> choose_first_door(player_choice)
    |> exclude_choosen_door(doors)
    |> make_final_choice(player_choice, switch)
  end

  defp choose_first_door(doors, player_choice) do
    Enum.find(doors, fn {key, val} -> key == :goat and val != player_choice end)
  end

  defp exclude_choosen_door({choosen_door_key, choosen_door_value}, doors) do
    Enum.filter(doors, fn {key, val} ->
      !(key == choosen_door_key and val == choosen_door_value)
    end)
  end

  defp make_final_choice(left_doors, player_choice, true) do
    Enum.flat_map(left_doors, fn {key, val} ->
      if val != player_choice, do: [key], else: []
    end)
  end

  defp make_final_choice(left_doors, player_choice, false) do
    Enum.flat_map(left_doors, fn {key, val} ->
      if val == player_choice, do: [key], else: []
    end)
  end
end
