defmodule ExMontyHall do
  @moduledoc """
  Documentation for `ExMontyHall`.
  """

  def generate(times) when times > 0 do
    IO.inspect(%{
      changing_door: do_generate(times, true),
      not_changing_door: do_generate(times, false)
    })
  end

  defp do_generate(times, switch_boolean) when is_boolean(switch_boolean) do
    for _i <- 1..times do
      ExMontyHall.Worker.State.new(need_switch: switch_boolean)
      |> ExMontyHall.Worker.run()
    end
    |> List.flatten()
    |> Enum.frequencies()
  end
end
