---
title: 'Solutio: Genus congrue'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Exitus

```
cannot divide by zero
```

## Commentarii

1. In Raku `1 / 0` non statim deficit. Loco eius `Failure` pigrum dat, quod exspectat donec adhibeatur. Exceptio solum iacitur cum valore *utimur*. Hic hoc fit cum eum per `say` imprimere conamur.

1. Exceptio iacta genus inbuiltum `X::Numeric::DivideByZero` habet. Ramus `when X::Numeric::DivideByZero` exacte illi generi convenit. Hic certum genus comparas, non omnia per `default` capis. Hoc tibi permittit diversos errores diversis modis tractare.

{% include nav.html %}
