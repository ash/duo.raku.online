---
title: 'Solutio: Pars dominii'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `index('@')` reddit `4`, quae est positio signi `@`, a nulla numerata.

1. `substr($at + 1)` unum characterem post `@` incipit. Quia nulla longitudo data est, ad finem chordae pergit. Eventus est `example.com`.

{% include nav.html %}
