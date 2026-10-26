---
title: 'Solvo: Variablo per our'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Vi povas trovi la fontkodon en la dosiero [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Eligo

```
8080
False
```

## Komentoj

1. `our $port` fariĝas parto de la nomspaco `Config`. Do vi povas atingi ĝin de ekstere kiel `$Config::port`, kio presas `8080`.

1. `my $secret` estas leksika, kio signifas, ke ĝi estas privata en la bloko de la pako. Do ĝi ne estas en la nomspaco. La vojo `$Config::secret` trovas nenion, nur nedifinitan valoron, do `.defined` estas `False`. Jen la diferenco, kiun `our` faras.

{% include nav.html %}
