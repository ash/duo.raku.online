---
title: 'Solutio: Genus congrue'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. In Raku `1 / 0` non statim ruit. `Failure` pigrum dat. `Failure` est valor cum errore intus. Exspectat donec eo uteris. Raku exceptionem solum iacit cum valore *utimur*. Hic eum per `say` imprimere conamur.

1. Exceptio iacta genus inbuiltum `X::Numeric::DivideByZero` habet. Ramus `when X::Numeric::DivideByZero` exacte huic generi convenit. Hic unum certum genus comparas. Non omnia per `default` capis. Itaque quodque genus erroris suo modo tractare potes.

{% include nav.html %}
