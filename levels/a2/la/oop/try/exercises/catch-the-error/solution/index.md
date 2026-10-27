---
title: 'Solutio: Errorem cape'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Hic clausula sine errore currit. Tum `try` simpliciter valorem clausulae dat. Itaque `$ok` continet `42`.

1. `die` in altera clausula exceptionem iacit. Itaque haec clausula valorem indefinitum dat. `$bad.defined` est `False`.

1. Raku exceptionem captam in variabili speciali `$!` servat. `$!.message` textum exceptionis reddit, `broken`.

{% include nav.html %}
