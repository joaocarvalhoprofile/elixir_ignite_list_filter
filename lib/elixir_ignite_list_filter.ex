defmodule ElixirIgniteListFilter do
  # ["1", "3", "6", "43", "banana", "6", "abc"]

  def call(list), do: Enum.count(impar(list))

  defp impar(list) do
    list
    |> Enum.filter(fn str -> String.match?(str, ~r/[0-9]+/) end)
    |> Enum.map(fn str -> String.to_integer(str) end)
    |> Enum.filter(fn x -> Integer.mod(x, 2) != 0 end)
  end
end
