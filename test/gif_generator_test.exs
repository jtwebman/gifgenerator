defmodule GifGeneratorTest do
  use ExUnit.Case
  doctest GifGenerator

  test "generate" do
    assert GifGenerator.generate("foo") == {:ok, <<1,2,3,4,5,6>>}
  end
end
