---
title: 'Solutio: Mundare in exitu'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Inveni codicem fontem in archivo [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Exitus

```
Working
Cleanup
```

## Commentarii

1. Primum programma `Working` imprimit. Deinde `return` subroutinam statim relinquit. Itaque programma `never reached` numquam imprimit.

1. Corpus mature finitur. Sed phaser `LEAVE` tamen in exitu currit. `Cleanup` imprimit. De hoc semper certus esse potes. Ideo `LEAVE` rectus locus est ad res liberandas. Semper currit, quocumque modo copia finitur.

{% include nav.html %}
