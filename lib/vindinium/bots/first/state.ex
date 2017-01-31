defmodule Vindinium.Bots.First.State do
  defstruct direction: "Stay", pos: {0, 0}

  def new do
     {:ok, agent} = Agent.start_link(fn -> %State{} end, name: __MODULE__)
  end

  def update_pos(pos) do
    Agent.update(__MODULE__, fn(old_state) -> pos end)
  end

  def get_pos() do
    Agent.get(__MODULE__, fn(state) -> state end)
  end
end
