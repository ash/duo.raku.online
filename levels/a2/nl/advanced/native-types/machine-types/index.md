---
title: Typen op machineniveau
---

{% include menu.html %}

De native typen hebben namen in kleine letters: `int`, `num` en `str`. Je declareert er een variabele mee, net als met `Int` of `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Een native waarde past direct bij een machineregister of machinewoord. Dat zijn kleine plekken voor gegevens in de computer. Een normale Raku-waarde heeft een wrapper-object om zich heen. Een native waarde heeft geen wrapper. Daarom zijn native typen sneller en gebruiken ze minder geheugen. Dat is belangrijk bij grote arrays. Het is ook belangrijk bij korte lussen die veel rekenen.

Eén ding moet je meteen weten. Een native variabele is nooit ongedefinieerd. Een gewone `Int`-variabele begint als ongedefinieerd. `say` toont hem als `(Int)`. Maar een native `int` begint op **nul**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Hetzelfde geldt voor native arrays. Schrijf voor zo'n array het native type voor de `@`-variabele:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Zo'n array bewaart zijn elementen als eenvoudige machine-integers. Het zijn geen volwaardige `Int`-objecten. Daarom gebruikt de array minder geheugen. Je kunt vragen wat het type van een native waarde is. Dan zet Raku de waarde automatisch in het bijbehorende volwaardige type. We zeggen dat de waarde _geboxt_ wordt. Daarom toont `(my int $b).WHAT` `(Int)`.

{% include nav.html %}
