---
title: 'Solution: Eine our-Variable'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Du findest den Quellcode in der Datei [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Ausgabe

```
8080
False
```

## Kommentare

1. `our $port` wird Teil des `Config`-Namensraums. Also kannst du sie von außen als `$Config::port` erreichen, was `8080` ausgibt.

1. `my $secret` ist lexikalisch, das heißt, sie ist privat im Package-Block. Also ist sie nicht im Namensraum. Der Pfad `$Config::secret` findet nichts, nur einen undefinierten Wert, also ergibt `.defined` den Wert `False`. Das ist der Unterschied, den `our` ausmacht.

{% include nav.html %}
