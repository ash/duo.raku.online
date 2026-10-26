---
title: 'Solution: Eine our-Variable'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `our $port` ist Teil des Namensraums `Config`. Also bekommst du sie von außen als `$Config::port`. Das gibt `8080` aus.

1. `my $secret` ist lexikalisch. Sie ist privat im Block des Packages. Also ist sie nicht im Namensraum. Der Pfad `$Config::secret` findet nichts. Er gibt einen undefinierten Wert. Also ergibt `.defined` den Wert `False`. Das ist der Unterschied, den `our` macht.

{% include nav.html %}
