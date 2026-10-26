---
title: 'Solution: Costruire un URL'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'array è scritto con la forma di quotazione ad angoli `<...>`. Significa la stessa cosa di `'http', '://', 'example', '.com'`.

1. Il meta-operatore di riduzione `[~]` mette l'operatore `~` tra tutti gli elementi. Questo operatore unisce le stringhe. Quindi `[~] @parts` unisce i quattro pezzi nella singola stringa `http://example.com`.

1. Teniamo il risultato in `$url`, così possiamo usarlo di nuovo. Poi `$url.chars` mostra che l'URL completo è lungo `18` caratteri.

{% include nav.html %}
