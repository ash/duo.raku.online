---
title: 'Solution: Slurpy benoemde argumenten'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Eerst krijgt de vaste positionele parameter `$name` zijn waarde. Dan verzamelt de slurpy `*%opts` alle andere benoemde argumenten. Hij zet ze in een hash.

1. `%opts.sort` sorteert de paren op sleutel. Zo is de uitvoer altijd hetzelfde: `colour` komt vóór `size`. `.map` maakt van elk paar een `sleutel=waarde`-string. Daarvoor gebruikt hij `.key` en `.value`. Dan plakt `.join(', ')` de strings aan elkaar.

1. De laatste string bevat de waarden van `$name` en `$details`. We hebben `$details` eerder gebouwd. Het resultaat is `Anna: colour=red, size=5`.

{% include nav.html %}
