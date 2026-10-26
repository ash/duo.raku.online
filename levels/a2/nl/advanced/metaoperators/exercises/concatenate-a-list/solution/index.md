---
title: 'Solution: Een URL opbouwen'
translations_gpt: De oplossing van 'Bouw een URL'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De array gebruikt de quoting-vorm met punthaken, `<...>`. Dat is hetzelfde als `'http', '://', 'example', '.com'`.

1. `[~]` is een reductie-meta-operator. Hij zet de operator `~` tussen alle elementen. De operator `~` plakt tekenreeksen aan elkaar. Dus `[~] @parts` plakt de vier stukken aan elkaar tot één tekenreeks, `http://example.com`.

1. Het resultaat staat in de variabele `$url`. Zo kunnen we het opnieuw gebruiken. `$url.chars` geeft de lengte van de hele URL. Die is `18` tekens lang.

{% include nav.html %}
