---
title: 'Soluzione: Abbinate il tipo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

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

🦋 Trova il programma nel file [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Output

```
cannot divide by zero
```

## Commenti

1. In Raku `1 / 0` non fallisce subito. Invece dà un `Failure` pigro, che aspetta finché non viene usato. L'eccezione viene sollevata solo quando *usiamo* il valore. Qui succede quando proviamo a farne `say`.

1. L'eccezione sollevata ha il tipo incorporato `X::Numeric::DivideByZero`. Il ramo `when X::Numeric::DivideByZero` corrisponde proprio a quel tipo. Qui confronti un tipo specifico invece di intercettare tutto con `default`. Questo ti permette di gestire errori diversi in modi diversi.

{% include nav.html %}
