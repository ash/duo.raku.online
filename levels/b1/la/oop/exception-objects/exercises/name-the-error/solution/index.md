---
title: 'Solutio: Errorem nomina'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Exitus

```
X::AdHoc
sub failed
```

## Commentarii

1. `die` intra `risky` accidit, sed exceptio sursum ad vocantem migrat. `CATCH` in clausula quae `risky` vocavit eam tractat. Sic tractatio errorum plerumque operatur. Non necesse est defectum et tractatorem eius in eadem procedura esse.

1. Simplex `die` cum chorda exceptionem `X::AdHoc` creat, et `.^name` hoc genus nuntiat. Deinde `.message` textum ad `die` traditum reddit.

{% include nav.html %}
