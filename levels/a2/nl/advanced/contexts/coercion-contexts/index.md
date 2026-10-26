---
title: Numerieke, string- en Booleaanse context
translations_gpt: Numeric, string, and Boolean context
---

{% include menu.html %}

Drie contexten komen heel vaak voor. In de eerste gedraagt een waarde zich als een getal. In de tweede gedraagt hij zich als een string. In de derde gedraagt hij zich als `True` of `False`. Elk van deze contexten heeft een prefix-operator. De operator staat voor de waarde. Hij stelt de context direct in:

* `+` — numerieke context: de waarde gedraagt zich als een getal
* `~` — stringcontext: de waarde gedraagt zich als een string
* `?` — Booleaanse context: de waarde gedraagt zich als `True` of `False`

Gebruik ze met een array. `+` geeft de lengte van de array. `~` geeft zijn elementen, met spaties ertussen. `?` zegt of de array elementen heeft:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Een lege array is `0` in numerieke context. In Booleaanse context is hij `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Je hoeft deze operatoren niet altijd te schrijven. Vaak stelt Raku de juiste context voor je in. Rekenen zet waarden in numerieke context. Strings samenvoegen zet ze in stringcontext. En `if`, `while`, `and` en `or` zetten hun voorwaarde in Booleaanse context:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Dus werkt `if @array { … }` zoals je verwacht. Een array met elementen is waar. Met de prefix-operatoren vraag je zelf om dezelfde conversies.

Je kunt `if` ook na het statement zetten. Dan is de code kort en duidelijk:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
