# Exercise ListAndRecursion-4

# Write a function `MyList.span(from, to)` that returns a list of the numbers `from` up to `to`.

defmodule MyList do
  def span(from, to), do: span(from, to, [])
  def span(from, to, list) when from < to, do: span(from + 1, to, list ++ [from])
  def span(from, to, list) when from == to, do: list ++ [from]
end
