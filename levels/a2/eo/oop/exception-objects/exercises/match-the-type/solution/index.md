---
title: 'Solvo: Kongruigu la tipon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Eligo

```
cannot divide by zero
```

## Komentoj

1. En Raku, `1 / 0` ne kolapsas tuj. Ĝi donas maldiligentan `Failure`. `Failure` estas valoro kun eraro interne. Ĝi atendas, ĝis vi uzas ĝin. Raku ĵetas la escepton nur, kiam ni *uzas* la valoron. Ĉi tie, ni provas presi ĝin per `say`.

1. La ĵetita escepto havas la enkonstruitan tipon `X::Numeric::DivideByZero`. La branĉo `when X::Numeric::DivideByZero` kongruas ĝuste kun ĉi tiu tipo. Ĉi tie, vi kongruas kun unu certa tipo. Vi ne kaptas ĉion per `default`. Do vi povas trakti ĉiun specon de eraro laŭ ĝia propra maniero.

{% include nav.html %}
