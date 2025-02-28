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
      user_text = "Hullo #{user.name}, you are a member of the "
      cond do
        user.age >= 0 && user.age <= 11 -> user_text <> "Generation Alpha"
        user.age>= 12 && user.age <= 27 -> user_text <> "Generation Z - Zoomers"
        user.age >= 28 && user.age <= 43 -> user_text <> "Generation Y - Millennials"
        user.age >= 44 && user.age <= 59 -> user_text <> "Generation X - The Forgotten Generation"
        user.age >= 60 && user.age <= 78 -> user_text <> "Baby Boomers"
        user.age >= 79 && user.age <= 96 -> user_text <> "Silent Generation"
        user.age >= 97 && user.age <= 120 -> user_text <> "Greatest Generation"
        true -> "Invalid age"
      end
    end
  end
