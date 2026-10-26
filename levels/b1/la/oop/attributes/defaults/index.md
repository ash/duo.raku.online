---
title: Valores praedefiniti
translations_gpt:
---

{% include menu.html %}

Attributo _valorem praedefinitum_ dare potes. Is adhibetur cum obiectum sine valore pro illo attributo creas. Scribe valorem praedefinitum post attributum, cum `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Nota: attributis genus dare potes, sicut variabilibus.

Cum `weight` ad `new` non tradis, attributum valorem suum praedefinitum accipit:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Valorem praedefinitum tamen superare potes, si valorem tradis:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Attributum sine valore praedefinito et sine valore ex `new` simpliciter indefinitum est. Est exacte sicut nova variabilis scalaris.

{% include nav.html %}
