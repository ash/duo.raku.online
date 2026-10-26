---
title: Typen op machineniveau
---

{% include menu.html %}

De namen van de native typen zijn in kleine letters: `int`, `num` en `str`. Je gebruikt ze om een variabele te declareren, net als `Int` of `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Een native waarde past direct bij een machineregister of machinewoord. Die heeft geen wrapper-object, dat een normale Raku-waarde altijd wel heeft. Daardoor zijn native typen sneller en nemen ze minder geheugen in. Dat is belangrijk in korte lussen die veel berekeningen doen, en in grote arrays.

Eén ding moet je meteen weten: een native variabele kan nooit ongedefinieerd zijn. Een gewone `Int`-variabele begint als de ongedefinieerde `(Int)`. Een native `int` begint echter op **nul**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Hetzelfde geldt voor native arrays. Je declareert ze door het native type voor de `@`-variabele te zetten:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Zo'n array slaat zijn elementen op als ruwe machine-integers, niet als boxed `Int`-objecten. Daardoor gebruikt hij minder geheugen. Als je een native waarde iets over zichzelf vraagt, _boxt_ Raku die waarde automatisch. Raku zet de waarde dan in het bijbehorende volwaardige type. Daarom toont `(my int $b).WHAT` `(Int)`.

{% include nav.html %}
