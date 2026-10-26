---
title: 'Solutio: Titulus mutabilis'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Proprietas `is rw` accessorem mutat. Nunc receptaculum reddit in quo scribere potes. Itaque accessor in parte sinistra assignationis stare potest.

1. In receptaculo scribere potes. Itaque operator `~=` quoque cum eo operatur. Hic operator chordas iungit et uno gradu assignat. `$l.text ~= ' (revised)'` textum praesentem legit. Novam partem ad finem addit. Deinde effectum retro servat. Haec omnia per eundem accessorem fiunt.

{% include nav.html %}
