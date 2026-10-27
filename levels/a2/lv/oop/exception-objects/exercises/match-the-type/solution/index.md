---
title: 'Risinājums: Saskaņojiet tipu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

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

🦋 Atrodiet programmu failā [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Izvade

```
cannot divide by zero
```

## Komentāri

1. Raku valodā `1 / 0` neavarē uzreiz. Tas dod slinku `Failure`. `Failure` ir vērtība ar kļūdu iekšā. Tas gaida, līdz jūs to izmantojat. Raku izmet izņēmumu tikai tad, kad mēs vērtību *izmantojam*. Šeit mēs mēģinām to izdrukāt ar `say`.

1. Izmestajam izņēmumam ir iebūvētais tips `X::Numeric::DivideByZero`. Zars `when X::Numeric::DivideByZero` atbilst tieši šim tipam. Šeit jūs salīdzināt ar vienu noteiktu tipu. Jūs nenoķerat visu ar `default`. Tāpēc katru kļūdas veidu jūs varat apstrādāt savā veidā.

{% include nav.html %}
