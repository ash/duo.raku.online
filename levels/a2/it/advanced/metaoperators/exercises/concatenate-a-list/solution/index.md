---
title: 'Solution: Costruire un URL'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Puoi trovare il codice sorgente nel file [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Output

```
http://example.com
18
```

## Commenti

1. L'array usa la forma di quotazione con le parentesi angolari, `<...>`. È uguale a `'http', '://', 'example', '.com'`.

1. `[~]` è un meta-operatore di riduzione. Mette l'operatore `~` tra tutti gli elementi. L'operatore `~` unisce le stringhe. Così `[~] @parts` unisce i quattro pezzi in una stringa, `http://example.com`.

1. Il risultato è nella variabile `$url`. Così possiamo usarlo di nuovo. `$url.chars` dà la lunghezza di tutto l'URL. È lungo `18` caratteri.

{% include nav.html %}
