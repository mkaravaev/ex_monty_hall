defmodule Mix.Tasks.MontyHallEmulate do
  use Mix.Task
  @requirements ["app.start"]

  @impl Mix.Task
  def run([number_of_runs]) do
    number_of_runs
    |> String.to_integer()
    |> ExMontyHall.generate()
  end

end
