---
title: 'Solutio: Dynamicam superimponere'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `task` vocat `log-it`. Sed `$*prefix` numquam adhibet. Tamen valor ad `log-it` pervenit. Quaesitio dynamica retro per acervum vocationum it. Praeter `task` it. Codicem attingit qui tunc in acervo est.

1. Duae clausulae diversos valores ponunt. Itaque *eadem* vocatio `task()` singulis vicibus aliud praefixum dat. Ideo variabiles dynamicae utiles sunt. Informatio ad codicem procul in catena vocationum pervenit. Nulla procedura media eam ut argumentum tradere debet.

{% include nav.html %}
