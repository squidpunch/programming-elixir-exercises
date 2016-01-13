# Exercise ListAndRecursion-2
# Write a max(list) that returns the element with the maximum value in the list.
# (This is slightly trickier than it sounds)

defmodule MyList do
  def max_number(list), do: max_number(list, 0)
  def max_number([head | tail], value) when head >= value, do: max_number(tail, head)
  def max_number([head | tail], value) when head < value, do: max_number(tail, value)
  def max_number([], value), do: value
end
