---
title: 'Solutio: Nuntia et recupera'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Cum `die` iacit, reliqua pars clausulae praeteritur. Itaque linea `$timeout = 60` numquam currit, et `$timeout` valorem praedefinitum `30` servat.

1. `CATCH` exceptionem tractat et monitum imprimit. Itaque programma non sistit, et cum valore praedefinito pergit. Hoc exacte significat ab errore *recuperare*. Problema notas, ad aliquid tutum recurris, et pergis.

{% include nav.html %}
