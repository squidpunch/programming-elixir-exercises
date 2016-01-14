# Exercise ListAndRecursion-3
# An Elixir single-quoted string is actually a list of individual character
# codes.  Write a `caesar(list, n)` function that adds `n` to each list element,
# wrapping if the additional results in a character greater than z.
#
# MyList.caesar('ryvkve', 13)
# ?????? :)

defmodule MyList do
  def caesar([head|tail], adjustment) when head + adjustment > ?z, do: [?a + head + adjustment - ?z -1 | caesar(tail, adjustment)]
  def caesar([head|tail], adjustment), do: [head + adjustment | caesar(tail, adjustment)]
  def caesar([], adjustment), do: []
end
