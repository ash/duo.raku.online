---
title: 'Oplossing: Een terugvalwaarde'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Je kunt de broncode vinden in het bestand [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Uitvoer

```
5
default
```

## Opmerkingen

1. `get(5)` geeft gewoon `5` terug. Dus houdt `//` deze waarde.

1. `get(0)` geeft een `Failure` terug. Een `Failure` is een waarde met een fout erin. Hij is ongedefinieerd. Dus gebruikt `//` de terugvalwaarde, `'default'`. `//` handelt de ongedefinieerde `Failure` stil af. Hij werpt geen exceptie.

{% include nav.html %}
