---
title: 'Solvo: Kongruigu la tipon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. En Raku, `1 / 0` ne malsukcesas tuj. Anstataŭe, ĝi donas maldiligentan `Failure`, kiu atendas, ĝis ĝi estas uzata. La escepto estas ĵetata nur, kiam ni *uzas* la valoron. Ĉi tie, tio okazas, kiam ni provas presi ĝin per `say`.

1. La ĵetita escepto havas la enkonstruitan tipon `X::Numeric::DivideByZero`. La branĉo `when X::Numeric::DivideByZero` kongruas ĝuste kun tiu tipo. Ĉi tie, vi kongruas kun specifa tipo anstataŭ kapti ĉion per `default`. Tio permesas al vi trakti malsamajn erarojn en malsamaj manieroj.

{% include nav.html %}
