---
title: Namensräume und our
---

{% include menu.html %}

Das Wort `our` macht etwas in seinem Namensraum sichtbar. Eine Variable mit `my` ist lexikalisch. Sie ist privat in ihrem Block. Eine Variable mit `our` ist auch eine Package-Variable. Du kommst von außen über den `::`-Pfad an sie heran:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funktioniert. Die Variable `count` hat `our`. Aber `$Counter::secret` funktioniert nicht. Die Variable `secret` ist lexikalisch.

Namensräume kann man **verschachteln**. Das heißt, ein Namensraum ist in einem anderen. Ein Package in einem Package ergibt einen längeren `::`-Pfad:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Der volle Name `$Outer::Inner::val` ist wie ein Pfad. Er geht vom äußeren Namensraum in den inneren. Dann geht er zur Variable. Die Standardbibliothek benutzt genau diesen Aufbau. Namen wie `IO::Socket::INET` sind verschachtelte Namensräume. Deine eigenen Module können auch so arbeiten. Sie halten alle ihre Teile unter einem gemeinsamen Hauptnamen.

{% include nav.html %}
