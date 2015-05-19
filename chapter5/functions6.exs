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
  def guess(answer, low.._) when answer == low do
    IO.puts answer
  end

  def guess(answer, _..high) when answer == high do
    IO.puts answer
  end

  def guess(answer, 1..high) do
    make_a_guess(answer, 1..high, current_guess(1..high))
  end

  def make_a_guess(answer, low..high, guess) when answer > guess do
    IO.puts "Is it #{guess}"
    make_a_guess(answer, guess..high, current_guess(guess..high))
  end

  def make_a_guess(answer, low..high, guess) when answer < guess do
    IO.puts "Is it #{guess}"
    make_a_guess(answer, low..guess, current_guess(low..guess))
  end

  def make_a_guess(answer, low..high, guess) when answer == guess do
    IO.puts "Is it #{guess}"
    IO.puts answer
  end

  def current_guess(low..high) do
    div(high - low, 2) + low
  end
end
