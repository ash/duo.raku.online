---
title: 'Solutio: Nuntia et recupera'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Inveni codicem fontem in archivo [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Exitus

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Commentarii

1. `die` exceptionem iacit. Tum Raku reliquam partem clausulae praeterit. Itaque linea `$timeout = 60` numquam currit. `$timeout` valorem suum praedefinitum servat, `30`.

1. `CATCH` exceptionem tractat. Monitum imprimit. Itaque programma non sistit. Cum valore praedefinito pergit. Hoc est ab errore *recuperare*. Problema notas. Loco eius aliquid tutum adhibes. Deinde pergis.

{% include nav.html %}
