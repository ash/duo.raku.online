---
title: Naamruimten en our
translations_gpt:
---

{% include menu.html %}

Het woord `our` maakt iets zichtbaar in zijn naamruimte. Een variabele met `my` is lexicaal. Hij is privé voor zijn blok. Een variabele met `our` is ook een pakketvariabele. Je kunt er van buitenaf bij via het `::`-pad:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` werkt. De variabele `count` heeft `our`. Maar `$Counter::secret` mislukt. De variabele `secret` is lexicaal.

Naamruimten kunnen **genest** worden. Dat betekent dat de ene naamruimte in de andere zit. Een pakket in een pakket maakt een langer `::`-pad:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

De volledige naam `$Outer::Inner::val` is als een pad. Hij gaat van de buitenste naamruimte naar de binnenste. Dan gaat hij naar de variabele. De standaardbibliotheek gebruikt precies deze opbouw. Namen zoals `IO::Socket::INET` zijn geneste naamruimten. Je eigen modules kunnen ook zo werken. Ze houden al hun onderdelen onder één naam op het hoogste niveau.

{% include nav.html %}
