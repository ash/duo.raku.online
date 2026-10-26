---
title: 'Solution: Slurpy benoemde argumenten'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 De broncode is te vinden in het bestand [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Uitvoer

```
Anna: colour=red, size=5
```

## Opmerkingen

1. De vaste positionele parameter `$name` krijgt eerst zijn waarde. Daarna verzamelt de slurpy `*%opts` alle overige benoemde argumenten in een hash.

1. `%opts.sort` zet de paren op volgorde van sleutel, dus de uitvoer is altijd hetzelfde: `colour` komt vóór `size`. De `.map` maakt van elk paar een `sleutel=waarde`-string met `.key` en `.value`. Daarna voegt `.join(', ')` de strings samen.

1. De laatste string bevat de waarden van `$name` en van de complete `$details`. Dat geeft `Anna: colour=red, size=5`.

{% include nav.html %}
