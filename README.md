# Benchmarking dry-rb gems

Just a collection of my benchmarks to test different dry-rb cases

## Do-notation vs dry-transaction

3 steps:

```
Warming up --------------------------------------
  do-notation: happy    33.809k i/100ms
do-notation: failure    14.274k i/100ms
  transaction: happy     5.878k i/100ms
transaction: failure     5.867k i/100ms
Calculating -------------------------------------
  do-notation: happy    387.914k (± 1.4%) i/s -      1.961M in   5.056134s
do-notation: failure    152.445k (± 1.7%) i/s -    770.796k in   5.057752s
  transaction: happy     59.981k (± 3.0%) i/s -    299.778k in   5.002999s
transaction: failure     60.327k (± 1.5%) i/s -    305.084k in   5.058375s

Comparison:
  do-notation: happy:   387913.7 i/s
do-notation: failure:   152445.2 i/s - 2.54x  slower
transaction: failure:    60327.4 i/s - 6.43x  slower
  transaction: happy:    59981.0 i/s - 6.47x  slower
```

9 steps:

```
arming up --------------------------------------
  do-notation: happy    10.384k i/100ms
do-notation: failure     9.282k i/100ms
  transaction: happy     2.084k i/100ms
transaction: failure     2.083k i/100ms
Calculating -------------------------------------
  do-notation: happy    108.311k (± 1.3%) i/s -    550.352k in   5.082157s
do-notation: failure     89.917k (± 6.9%) i/s -    454.818k in   5.086821s
  transaction: happy     21.047k (± 2.1%) i/s -    106.284k in   5.052038s
transaction: failure     21.047k (± 1.5%) i/s -    106.233k in   5.048585s

Comparison:
  do-notation: happy:   108310.5 i/s
do-notation: failure:    89917.5 i/s - 1.20x  slower
  transaction: happy:    21047.4 i/s - 5.15x  slower
transaction: failure:    21047.1 i/s - 5.15x  slower
```
