---
title: Numerieke, string- en Booleaanse context
translations_gpt: Numeric, string, and Boolean context
---

{% include menu.html %}

Drie contexten komen heel vaak voor. Daarin gedraagt een waarde zich als een getal, een string of een Booleaanse waarde. Voor elk ervan is er een prefix-operator die de context direct instelt:

* `+` — numerieke context
* `~` — stringcontext
* `?` — Booleaanse context

Bij een array geeft `+` de lengte, en `~` geeft de elementen met spaties ertussen. `?` laat zien of de array wel elementen heeft:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Een lege array geeft `0` in numerieke context en `False` in Booleaanse context:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Je hoeft deze operatoren niet altijd zelf te schrijven. Raku kan de juiste context voor je instellen. Rekenen zet de waarden in numerieke context, en strings samenvoegen zet ze in stringcontext. `if`, `while` en `and`/`or` zetten hun voorwaarde in Booleaanse context:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Dus werkt `if @array { … }` precies zoals je zou verwachten. Een array die niet leeg is, is waar. De prefix-operatoren zijn een manier om direct om dezelfde conversies te vragen.

Samen met een postfix `if` kun je zo korte en duidelijke code schrijven:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
