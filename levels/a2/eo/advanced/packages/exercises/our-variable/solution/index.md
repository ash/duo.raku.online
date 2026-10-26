---
title: 'Solvo: Variablo per our'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `our $port` estas parto de la nomspaco `Config`. Do vi povas atingi ĝin de ekstere kiel `$Config::port`. Tio presas `8080`.

1. `my $secret` estas leksika. Ĝi estas privata en la bloko de la pako. Do ĝi ne estas en la nomspaco. La vojo `$Config::secret` trovas nenion. Ĝi donas nedifinitan valoron. Do `.defined` estas `False`. Jen la diferenco, kiun `our` faras.

{% include nav.html %}
