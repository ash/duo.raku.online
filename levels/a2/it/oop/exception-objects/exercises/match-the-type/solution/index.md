---
title: 'Soluzione: Abbinate il tipo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. In Raku `1 / 0` non crolla subito. Dà un `Failure` pigro. Un `Failure` è un valore con dentro un errore. Aspetta finché non lo usi. Raku solleva l'eccezione solo quando *usiamo* il valore. Qui proviamo a farne `say`.

1. L'eccezione sollevata ha il tipo incorporato `X::Numeric::DivideByZero`. Il ramo `when X::Numeric::DivideByZero` corrisponde proprio a questo tipo. Qui confronti un tipo preciso. Non intercetti tutto con `default`. Così puoi gestire ogni genere di errore a modo suo.

{% include nav.html %}
