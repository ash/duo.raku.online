---
title: Namensräume und our
---

{% include menu.html %}

Erst der `our`-Deklarator macht einen Namen in seinem Namensraum sichtbar. Eine Variable, die du mit `my` deklarierst, ist lexikalisch, also privat in ihrem Block. Eine Variable, die du mit `our` deklarierst, ist auch eine Package-Variable. Du kannst sie von außen über den `::`-Pfad erreichen:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funktioniert, weil `count` mit `our` deklariert wurde. Aber `$Counter::secret` würde nicht funktionieren, weil `secret` lexikalisch ist.

Namensräume kann man **verschachteln**, das heißt, einer kann in einem anderen liegen. Ein Package in einem Package ergibt einen längeren `::`-Pfad:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Der volle Name `$Outer::Inner::val` führt vom äußeren Namensraum in den inneren. Von dort führt er zur Variable. Genau so ist die Standardbibliothek aufgebaut: Namen wie `IO::Socket::INET` sind verschachtelte Namensräume. Auch deine eigenen Module ordnen ihre Teile so unter einem gemeinsamen Hauptnamen.

{% include nav.html %}
