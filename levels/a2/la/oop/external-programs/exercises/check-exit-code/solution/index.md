---
title: 'Solutio: Codicem exitus inspice'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Inveni codicem fontem in archivo [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Exitus

```
4
failure
```

## Commentarii

1. `run` obiectum `Proc` reddit. Id in `$proc` servamus et deinde legimus. Hoc hic magni momenti est. Imperatum deficere potest. Si nemo `Proc` eius servat, Raku exceptionem iacit. Exceptio est error qui programma sistit. Sed hic effectum inspicimus. Hoc idem est ac defectum tractare.

1. `.exitcode` numerum dat quem imperatum reddidit. Hic est `4`. Etiam `Proc` ut valorem Booleanum probare potes. Valor Booleanus verus aut falsus est. Hoc ad quaestionem simpliciorem respondet: operatumne est imperatum? `Proc` verum est solum cum codex exeundi `0` est. Hic falsum est. Itaque programma `failure` imprimit.

{% include nav.html %}
