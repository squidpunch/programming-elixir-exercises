# Write a function `prefix` that takes a string.  It should returna  new
# function that takes a second string.  When that second function is called, it
# will return a string containing the first string, a space, and the second
# string.

# Examples:
#
#   mrs = prefix.("Mrs")
#   mrs.("Smith")
#   "Mrs. Smith"
#
#   prefix.("Elixir").("Rocks")
#   "Elixir Rocks"

prefix = fn(prefix) -> fn(name) -> "#{prefix} #{name}" end end


mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
