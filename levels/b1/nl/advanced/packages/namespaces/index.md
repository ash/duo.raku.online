---
title: Naamruimten en our
translations_gpt:
---

{% include menu.html %}

De `our`-declarator maakt een naam zichtbaar in zijn naamruimte. Een variabele die met `my` gedeclareerd is, is lexicaal, wat betekent dat hij privé is voor zijn blok. Een variabele die met `our` gedeclareerd is, is ook een pakketvariabele. Je kunt hem van buitenaf bereiken via het `::`-pad:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` werkt omdat `count` met `our` gedeclareerd is. Maar `$Counter::secret` zou mislukken, omdat `secret` lexicaal is.

Naamruimten kunnen **genest** worden, dat wil zeggen dat de ene in de andere kan zitten. Een pakket binnen een pakket geeft een langer `::`-pad:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

De volledige naam `$Outer::Inner::val` leidt van de buitenste naamruimte naar de binnenste. Van daaruit leidt hij naar de variabele. Precies zo is de standaardbibliotheek opgebouwd: namen zoals `IO::Socket::INET` zijn geneste naamruimten. Je eigen modules groeperen hun onderdelen ook zo onder één naam op het hoogste niveau.

{% include nav.html %}
