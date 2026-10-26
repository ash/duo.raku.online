---
title: 'Solutio: Acronymum'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `$phrase.words` indicem verborum reddit. Pro quoque verbo cyclus primum characterem cum `substr(0, 1)` sumit. Deinde hunc characterem ad finem `$acronym` addit.

1. Cum omnes primae litterae collectae sunt, `uc` eventum in litteras maiores convertit: `HTML`.

{% include nav.html %}
