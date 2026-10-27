---
title: 'Solutio: Errorem nomina'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `die` intra `risky` accidit. Sed exceptio ad vocantem ascendit. Vocans est codex qui `risky` vocavit. Hic est clausula. `CATCH` in hac clausula exceptionem tractat. Sic tractatio errorum plerumque operatur. Codex qui errorem tractat est tractator eius. Error et tractator eius in diversis proceduris esse possunt.

1. Simplex `die` cum chorda exceptionem `X::AdHoc` facit. `.^name` hoc genus ostendit. `.message` textum reddit quem ad `die` dedimus.

{% include nav.html %}
