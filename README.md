# xwordR

A package of utilities to potentially help me compile crosswords.

I'm just exploring the concept for now, playing around with what it might be able to achieve - but
the basics of it consist of two functions:

### init_puzzle()

A function which will generate a emtpy blocked grid.

Aspirationally, it'll generate a randomised structure, with configurable size and symmetry types... but for
the time being I've hard coded a grid just to check the data structure works.

It returns a data frame (tibble) of the clues, their word lengths, and positions. 

```
   DA        x     y Length Word     No
   <chr> <int> <int>  <int> <lgl> <int>
 1 A         1     1      8 NA        1
 2 A        10     1      6 NA        6
 3 A         1     3      8 NA        9
 4 A        10     3      6 NA       10
 5 A         1     5     12 NA       11
 6 A         1     7      6 NA       12
 7 A         8     7      8 NA       13
 8 A         1     9      8 NA       15
 9 A        10     9      6 NA       18
10 A         4    11     12 NA       21
# … with 17 more rows
```

### print_puzzle()

Will become the means to output the generated (filled or unfilled) puzzle.

At the moment, it only supports very simplified text output. While I'm working on the filling algorithm this is all I need...

```
[1] "                #            "
[1] "#   #   #   #   #   #   #   #"
[1] "                #            "
[1] "#   #   #   #   #   #   #   #"
[1] "                        #   #"
[1] "#   #   #   #   # # #   #   #"
[1] "            #                "
[1] "# # # # #   #   #   # # # # #"
[1] "                #            "
[1] "#   #   # # #   #   #   #   #"
[1] "#   #                        "
[1] "#   #   #   #   #   #   #   #"
[1] "            #                "
[1] "#   #   #   #   #   #   #   #"
[1] "            #                "
```

Try to imagine the space characters are empty cells, the hashes are black squares! :)

### fill_puzzle()

Currently just a brute-force algorithm which attempts to find a random set of words to fill in the empty grid.

```
[1] "S U P E R E G O # N A W A B S"
[1] "#   # S # N # V # I # H # L #"
[1] "P O S T I Q U E # S P I K E R"
[1] "#   # E # U # R # E # P # A #"
[1] "I M B E C I L I T I E S # K #"
[1] "#   # M # R # M # # # A # E #"
[1] "K I R S T I # A R M Y W O R M"
[1] "# # # # # N # G # A # # # # #"
[1] "S O L F E G G I # G I N G A L"
[1] "# O # A # # # N # D #   # N #"
[1] "# G # D E P R A V A T I O N S"
[1] "# O # E #   # T # L #   # U #"
[1] "A N A D E M # I R E F U L L Y"
[1] "# I # L #   # V # N #   # A #"
[1] "G A L Y A C # E L S I N O R E"
```

It's currently using the `grady_augmented` word list (112k words) from the `lexicon` package. 
It's not ideal - contains lots of very obscure words which you would ultimately want to try to avoid.
But a good starter for 10...

Finally, here's that grid printed with the print function's "pretty" format... :)

```
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|S|U|P|E|R|E|G|O|#|N|A|W|A|B|S|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#| |#|S|#|N|#|V|#|I|#|H|#|L|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|P|O|S|T|I|Q|U|E|#|S|P|I|K|E|R|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#| |#|E|#|U|#|R|#|E|#|P|#|A|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|I|M|B|E|C|I|L|I|T|I|E|S|#|K|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#| |#|M|#|R|#|M|#|#|#|A|#|E|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|K|I|R|S|T|I|#|A|R|M|Y|W|O|R|M|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#|#|#|#|#|N|#|G|#|A|#|#|#|#|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|S|O|L|F|E|G|G|I|#|G|I|N|G|A|L|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#|O|#|A|#|#|#|N|#|D|#| |#|N|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#|G|#|D|E|P|R|A|V|A|T|I|O|N|S|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#|O|#|E|#| |#|T|#|L|#| |#|U|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|A|N|A|D|E|M|#|I|R|E|F|U|L|L|Y|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|#|I|#|L|#| |#|V|#|N|#| |#|A|#|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
[1] "|G|A|L|Y|A|C|#|E|L|S|I|N|O|R|E|"
[1] "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
```
