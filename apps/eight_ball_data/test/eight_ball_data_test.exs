defmodule EightBallDataTest do
  use ExUnit.Case
  doctest EightBallData

  test "greets the world" do
    assert EightBallData.hello() == :world
  end
end
