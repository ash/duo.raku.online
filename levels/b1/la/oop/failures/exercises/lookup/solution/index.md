---
title: 'Solutio: Inventum an non inventum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `lookup('z')` `fail` vocat, itaque `Failure` indefinitum reddit.

1. Effectus indefinitus est, itaque programma `not found` imprimit. Valore defecto uti non conatur.

1. `Failure` tamen exceptionem fert quae describit quid male cesserit. Eam per `$r.exception` accipis. Hoc etiam defectum ut tractatum notat, itaque postea non iaciet. Deinde `.message` textum legit qui ad `fail` traditus est, `no such key`.

{% include nav.html %}
