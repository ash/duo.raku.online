---
title: Introspectio receptaculorum
translations_gpt: Introspectio receptaculorum
---

{% include menu.html %}

_Introspectio_ significat valorem vel receptaculum de se ipso interrogare. Interrogare potes de typo eius, de receptaculo post eum, vel quomodo intus operetur. Iam uno instrumento introspectionis usus es, `.^name`, quod typum valoris imprimit.

Raku parvam familiam talium instrumentorum habet, et nomina eorum litteris maiusculis scribuntur: `WHAT`, `VAR`, `WHO` et `HOW`. Interdum _pseudo-methodi_ vocantur. Causa est quod compilator eis significationem specialem dat. Ea ut methodos ordinarias non tractat. Haec sectio unumquodque eorum inspicit.

Ad memoriam, hic iterum est `.^name`. Hoc receptaculum nullam restrictionem typi habet, et diversos valores in eo condimus. `.^name` ostendit quomodo typus eius mutetur:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Primo receptaculum est `Any`. Deinde typum cuiuscumque valoris ostendit quem nunc continet.

{% include nav.html %}
