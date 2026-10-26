---
title: 'Solutio: Mundare in exitu'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Postquam `Working` imprimitur, `return` subroutinam statim relinquit. Itaque `never reached` numquam imprimitur.

1. Corpus mature relictum est. Tamen phaser `LEAVE` in exitu currit et `Cleanup` imprimit. Huic rei semper confidere potes. Propterea exacte `LEAVE` rectus locus est ad res liberandas. Currit quocumque modo copia finitur.

{% include nav.html %}
