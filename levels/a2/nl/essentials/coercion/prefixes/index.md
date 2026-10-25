---
title: Typen converteren met prefix operatoren
---

{% include menu.html %}

Je kunt het type van een object ook veranderen met voorvoegseloperatoren. Elk van deze operatoren is maar één teken. Je zet hem direct voor een waarde of een variabele.

`~` | Zet om naar een string
`+` | Zet om naar een getal
`?` | Zet om naar een Booleaanse waarde

Hier is een voorbeeld. Het maakt een Booleaanse waarde van een geheel getal:

```raku
say ?42; # True
```

Omzetten naar een string werkt op dezelfde manier:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, aangezien "-30" 3 tekens heeft
```

Let op bij het omzetten naar een getal. Het type van het resultaat kan verschillen. Het hangt af van het getal. Vergelijk deze conversies van strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Voor een omzetting naar een Booleaanse waarde kun je ook `so` gebruiken. Je kunt het als voorvoegseloperator gebruiken. Of je kunt het als methode gebruiken:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
