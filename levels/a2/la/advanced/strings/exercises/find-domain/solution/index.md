---
title: 'Solutio: Pars dominii'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Inveni codicem fontem in archivo [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Exitus

```
example.com
```

## Commentarii

1. `index('@')` reddit `4`. Haec est positio signi `@`. Numeratio a nulla incipit.

1. `substr($at + 1)` unum characterem post `@` incipit. Nulla longitudo est. Itaque ad finem chordae pergit. Eventus est `example.com`.

{% include nav.html %}
