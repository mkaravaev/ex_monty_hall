# ExMontyHall

## Goal
The purpose of this scenario is to prove the Monty Hall problem (https://en.wikipedia.org/wiki/Monty_Hall_problem). My personal motivation for doing this is that this problem can be a good illustration of the philosophical principle that the 'Real World' can only be understood by the mind, and that what we tend to call the real world turns out to be only the sensually perceived world.
In the Monty Hall problem, our intuition leads to the wrong conclusion and this experimental shows that conclusion made on probability laws are predicts accurate results.


## Installation and Run
```elixir
mix deps.get

mix monty_hall_emulate <number_of_runs>
mix monty_hall_emulate 10000

%{
  changing_door: %{car: 6618, goat: 3382},
  not_changing_door: %{car: 3341, goat: 6659}
}

```



