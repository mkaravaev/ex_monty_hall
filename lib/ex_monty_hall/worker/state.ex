defmodule ExMontyHall.Worker.State do
  @doors [:goat, :goat, :car]

  defstruct [
    :doors,
    :switch?,
    :player_choice
  ]

  def new(switch) do
    %__MODULE__{
      doors: gen_doors(),
      switch?: Keyword.get(switch, :need_switch, false),
      player_choice: Enum.random(0..2)
    }
  end

  defp gen_doors do
    @doors
    |> Enum.shuffle()
    |> Enum.with_index()
  end
end
