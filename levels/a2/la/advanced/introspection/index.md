---
title: Introspectio receptaculorum
translations_gpt: Introspectio receptaculorum
---

{% include menu.html %}

_Introspectio_ est hoc: valorem vel receptaculum de se ipso interrogas. De typo eius interrogare potes. De receptaculo post eum interrogare potes. Etiam interrogare potes quomodo Raku eum intus agat. Iam unum instrumentum introspectionis nosti, `.^name`. Typum valoris imprimit.

Raku parvam familiam talium instrumentorum habet. Nomina eorum litteras maiusculas habent: `WHAT`, `VAR`, `WHO` et `HOW`. Homines ea interdum _pseudo-methodos_ vocant. Methodis similia sunt. Sed non sunt methodi ordinariae. Compilator eis significationem specialem dat. Haec sectio unumquodque eorum inspicit.

Hic est recordatio de `.^name`. Receptaculum in hoc codice typum fixum non habet. Diversos valores in eo condimus. `.^name` mutationem typi ostendit:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Primo receptaculum est `Any`. Postea typum valoris sui praesentis ostendit.

{% include nav.html %}
