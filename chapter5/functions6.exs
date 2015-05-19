# Functions - Exercise 6
# I am thinking of a number between 1 and 1,000
# The most efficient way to guess the number is guess halfway in the range and
# determine which half contains the result, and continue on with the proper half

# Example output
# Chop.guess(273, 1..1000)
# Is it 500?
# Is it 250?
# Is it 375?
# Is it 312?
# Is it 281?
# Is it 265?
# Is it 273?
#273

defmodule Chop do
  def guess(answer, low..high), do: guess(answer, current_guess(low..high), low..high)
  def guess(answer, guess, _.._) when answer == guess, do: IO.puts answer
  def guess(answer, guess, _..high) when answer > guess, do: guess(answer, guess..high)
  def guess(answer, guess, low.._) when answer < guess, do: guess(answer, low..guess)

  def current_guess(low..high) do
    IO.puts "Is it #{div(high - low, 2) + low}?"
    div(high - low, 2) + low
  end
end
