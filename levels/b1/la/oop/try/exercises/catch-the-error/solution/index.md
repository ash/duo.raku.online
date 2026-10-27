---
title: 'Solutio: Errorem cape'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Inveni codicem fontem in archivo [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Exitus

```
42
False
broken
```

## Commentarii

1. Cum clausula sine errore currit, `try` simpliciter valorem clausulae dat. Itaque `$ok` continet `42`.

1. `die` in altera clausula exceptionem iacit. Itaque illa clausula valorem indefinitum dat, et `$bad.defined` est `False`.

1. Exceptio capta in variabili speciali `$!` servatur. `$!.message` textum reddit qui ei datus est, `broken`.

{% include nav.html %}
