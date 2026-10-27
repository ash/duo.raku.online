---
title: 'Solutio: Inventum an non inventum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Inveni codicem fontem in archivo [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Exitus

```
not found
reason: no such key
```

## Commentarii

1. `lookup('z')` vocat `fail`. Itaque `Failure` reddit. `Failure` est valor indefinitus cum errore intus.

1. Effectus indefinitus est. Itaque programma `not found` imprimit. Valore defecto uti non conatur.

1. `Failure` tamen exceptionem intus tenet. Exceptio dicit quid male cesserit. `$r.exception` hanc exceptionem reddit. Hoc etiam defectum ut tractatum notat. Itaque postea errorem non facit. Deinde `.message` textum ex `fail` legit. Hic textus est `no such key`.

{% include nav.html %}
