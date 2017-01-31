require IEx

defmodule Vindinium.Bots.First do

  def move(state) do
    x = state["hero"]["pos"]["x"]
    y = state["hero"]["pos"]["y"]

    Enum.take_random(["Stay"], 1) |> List.first
  end


end
