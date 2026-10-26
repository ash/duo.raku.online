---
title: 'Solutio: Acronymum'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Inveni codicem fontem in archivo [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Exitus

```
HTML
```

## Commentarii

1. `$phrase.words` indicem verborum dat. Cyclus primum characterem cuiusque verbi cum `substr(0, 1)` sumit. Hunc characterem ad finem `$acronym` addit.

1. In fine omnes primae litterae in `$acronym` sunt. Tum `uc` eventum in litteras maiores convertit: `HTML`.

{% include nav.html %}
