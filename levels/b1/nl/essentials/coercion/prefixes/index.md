---
title: Typen converteren met prefix operatoren
---

{% include menu.html %}

Een andere manier om het type van een object te veranderen, is om voorvoegseloperatoren te gebruiken. Dit zijn operatoren van maar één teken. Je zet ze direct voor de waarde (of een variabele).

`~` | String-coërcie
`+` | Numerieke coërcie
`?` | Booleaanse coërcie

Hier is een voorbeeld dat een Booleaanse waarde maakt van een geheel getal:

```raku
say ?42; # True
```

Converteren naar een string is vergelijkbaar:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, aangezien "-30" 3 tekens heeft
```

Let op: bij een omzetting naar een getal hangt het type van het resultaat af van het getal. Vergelijk de volgende conversies van strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Om naar een Booleaanse waarde om te zetten, kun je ook een routine gebruiken die `so` heet. Die werkt als voorvoegseloperator of als methode:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
