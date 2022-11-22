# ExMontyHall

## Goal
The purpose of this script is to prove the Monty Hall problem (https://en.wikipedia.org/wiki/Monty_Hall_problem).
My personal motivation for doing this is that this problem can be a good illustration of the philosophical principle that 'the Real World' can only be understood by the mind, 
and what we tend to call real world turns out to be only the sensually perceived world.

In the Monty Hall problem, our intuition (knowledge based on previous experience) leads to the wrong conclusion of counting probability. 
This experiment shows that conclusion made with probability laws predicts accurate results despite it feels very controversal.


## Installation and Run
```elixir
mix deps.get

mix monty_hall_emulate <number_of_runs>
```

Example:

```

mix monty_hall_emulate 10000

%{
  changing_door: %{car: 6618, goat: 3382},
  not_changing_door: %{car: 3341, goat: 6659}
}

```



