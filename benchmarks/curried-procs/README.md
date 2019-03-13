# Run results

## both.rb

```
Warming up --------------------------------------
uncurried call (lambda)
                       310.127k i/100ms
curried call (lambda)
                       206.389k i/100ms
partially applied call (lambda)
                       218.549k i/100ms
uncurried call (proc)
                       315.770k i/100ms
 curried call (proc)   229.708k i/100ms
partially applied call (proc)
                       232.860k i/100ms
Calculating -------------------------------------
uncurried call (lambda)
                         12.422M (± 4.0%) i/s -     62.025M in   5.002654s
curried call (lambda)
                          4.917M (± 2.8%) i/s -     24.767M in   5.040828s
partially applied call (lambda)
                          4.995M (± 4.0%) i/s -     25.133M in   5.040530s
uncurried call (proc)
                         12.208M (± 4.1%) i/s -     60.944M in   5.002040s
 curried call (proc)      4.618M (± 7.0%) i/s -     22.971M in   5.000867s
partially applied call (proc)
                          5.019M (± 3.9%) i/s -     25.149M in   5.019358s

Comparison:
uncurried call (lambda): 12422117.3 i/s
uncurried call (proc): 12207809.2 i/s - same-ish: difference falls within error
partially applied call (proc):  5018927.4 i/s - 2.48x  slower
partially applied call (lambda):  4995466.6 i/s - 2.49x  slower
curried call (lambda):  4917065.4 i/s - 2.53x  slower
 curried call (proc):  4618241.8 i/s - 2.69x  slower
```

## collections-lambda.rb

```
Warming up --------------------------------------
 map: uncurried call    10.000  i/100ms
   map: curried call     4.000  i/100ms
map: partially applied call (block)
                         4.000  i/100ms
map: partially applied call (direct pass)
                         6.000  i/100ms
Calculating -------------------------------------
 map: uncurried call    113.287  (± 3.5%) i/s -    570.000  in   5.036319s
   map: curried call     43.627  (± 4.6%) i/s -    220.000  in   5.053447s
map: partially applied call (block)
                         42.746  (± 7.0%) i/s -    216.000  in   5.079463s
map: partially applied call (direct pass)
                         63.577  (± 3.1%) i/s -    318.000  in   5.009950s

Comparison:
 map: uncurried call:      113.3 i/s
map: partially applied call (direct pass):       63.6 i/s - 1.78x  slower
   map: curried call:       43.6 i/s - 2.60x  slower
map: partially applied call (block):       42.7 i/s - 2.65x  slower
```

## lambda.rb

```
Warming up --------------------------------------
uncurried call (lambda)
                       316.276k i/100ms
curried call (lambda)
                       220.361k i/100ms
partially applied call (lambda)
                       220.105k i/100ms
Calculating -------------------------------------
uncurried call (lambda)
                         12.098M (± 4.7%) i/s -     60.409M in   5.005822s
curried call (lambda)
                          4.652M (± 4.9%) i/s -     23.358M in   5.034326s
partially applied call (lambda)
                          4.802M (± 5.8%) i/s -     23.991M in   5.014668s

Comparison:
uncurried call (lambda): 12098267.3 i/s
partially applied call (lambda):  4802362.0 i/s - 2.52x  slower
curried call (lambda):  4652325.8 i/s - 2.60x  slower
```

## proc.rb

```
Warming up --------------------------------------
      uncurried call   297.789k i/100ms
        curried call   213.185k i/100ms
partially applied call
                       227.463k i/100ms
Calculating -------------------------------------
      uncurried call     12.439M (± 3.6%) i/s -     62.238M in   5.010083s
        curried call      4.994M (± 3.6%) i/s -     24.943M in   5.001198s
partially applied call
                          5.012M (± 3.2%) i/s -     25.248M in   5.043153s

Comparison:
      uncurried call: 12439415.3 i/s
partially applied call:  5011876.1 i/s - 2.48x  slower
        curried call:  4994303.1 i/s - 2.49x  slower
```
