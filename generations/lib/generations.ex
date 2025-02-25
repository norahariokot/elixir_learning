defmodule Generations do
    def user_info() do
      user = %{}
      name = IO.gets("What is your name? ") |> String.trim()
      age = IO.gets("What is your age? ") |> String.trim() |> String.to_integer()
      user
      |> Map.put(:name, name)
      |> Map.put(:age, age)
    end

    def user_generation(user) do
      IO.inspect(user)
      cond do
        user.age >= 0 && user.age <= 11 -> "Generation Alpha"
        user.age>= 12 && user.age <= 27 -> "Generation Z"
        user.age >= 28 && user.age <= 43 -> "Generation Y"
        user.age >= 44 && user.age <= 59 -> "Generation X"
        user.age >= 60 && user.age <= 78 -> "Baby Boomer"
        user.age >= 79 && user.age <= 96 -> "Silent Generation"
        user.age >= 97 && user.age <= 120 -> "Greatest Generation"
        true -> "Invalid age"
      end
    end
  end
