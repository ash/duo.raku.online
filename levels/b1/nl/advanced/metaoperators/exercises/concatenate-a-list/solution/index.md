---
title: 'Solution: Een URL opbouwen'
translations_gpt: De oplossing van 'Bouw een URL'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Je kunt de broncode vinden in het bestand [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Uitvoer

```
http://example.com
18
```

## Opmerkingen

1. De array is geschreven met punthaken, de quoting-vorm `<...>`. Dat betekent hetzelfde als `'http', '://', 'example', '.com'`.

1. De reductie-meta-operator `[~]` zet de operator `~` tussen alle elementen. Deze operator voegt tekenreeksen samen. Dus `[~] @parts` plakt de vier stukken aan elkaar tot de tekenreeks `http://example.com`.

1. We bewaren het resultaat in `$url`, zodat we het opnieuw kunnen gebruiken. Daarna laat `$url.chars` zien dat de hele URL `18` tekens lang is.

{% include nav.html %}
