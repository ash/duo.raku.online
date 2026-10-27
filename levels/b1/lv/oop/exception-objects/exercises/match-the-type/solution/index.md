---
title: 'Risinājums: Saskaņojiet tipu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Raku valodā `1 / 0` nerada kļūdu uzreiz. Tā vietā tas dod slinku `Failure`, kas gaida, līdz to izmantos. Izņēmums tiek izmests tikai tad, kad mēs vērtību *izmantojam*. Šeit tas notiek, kad mēģinām to izdrukāt ar `say`.

1. Izmestajam izņēmumam ir iebūvētais tips `X::Numeric::DivideByZero`. Zars `when X::Numeric::DivideByZero` atbilst tieši šim tipam. Šeit jūs salīdzināt ar konkrētu tipu, nevis noķerat visu ar `default`. Tas ļauj dažādas kļūdas apstrādāt dažādi.

{% include nav.html %}
