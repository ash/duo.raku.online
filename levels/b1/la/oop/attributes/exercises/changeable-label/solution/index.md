---
title: 'Solutio: Titulus mutabilis'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Inveni codicem fontem in archivo [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Exitus

```
draft (revised)
```

## Commentarii

1. Proprietas `is rw` facit ut accessor receptaculum scribendum reddat. Itaque accessor in parte sinistra assignationis esse potest.

1. Quia receptaculum scribendum est, operator compositus `~=` quoque in eo operatur. `$l.text ~= ' (revised)'` textum praesentem legit, novum finem addit et effectum retro servat. Haec omnia per eundem accessorem fiunt.

{% include nav.html %}
