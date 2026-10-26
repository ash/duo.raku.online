---
title: 'Solution: Una variabile our'
translations_gpt: true
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Puoi trovare il codice sorgente nel file [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Output

```
8080
False
```

## Commenti

1. `our $port` fa parte del namespace `Config`. Quindi puoi prenderla dall'esterno come `$Config::port`. Questo stampa `8080`.

1. `my $secret` è lessicale. È privata al blocco del package. Quindi non è nel namespace. Il percorso `$Config::secret` non trova niente. Dà un valore indefinito. Quindi `.defined` è `False`. Questa è la differenza che fa `our`.

{% include nav.html %}
