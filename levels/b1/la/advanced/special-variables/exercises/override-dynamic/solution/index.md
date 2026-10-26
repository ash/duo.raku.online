---
title: 'Solutio: Dynamicam superimponere'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

## Codex

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Inveni codicem fontem in archivo [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Exitus

```
INFO: working
DEBUG: working
```

## Commentarii

1. `task` vocat `log-it` sed `$*prefix` numquam commemorat. Tamen valor ad `log-it` pervenit. Quaesitio dynamica foras per acervum vocationum it, praeter `task`. Eum attingit quicumque tunc in acervo est.

1. Duae clausulae diversos valores ponunt. Itaque *eadem* vocatio `task()` singulis vicibus aliud praefixum dat. Hoc variabiles dynamicas utiles facit. Contextus ad codicem alte nidificatum pervenit. Eum ut argumentum per omnem proceduram mediam tradere non debes.

{% include nav.html %}
