---
title: 'Risinājums: Nosauciet kļūdu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Atrodiet programmu failā [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Izvade

```
X::AdHoc
sub failed
```

## Komentāri

1. `die` notiek `risky` iekšā, bet izņēmums ceļo augšup pie izsaucēja. To apstrādā `CATCH` blokā, kas izsauca `risky`. Tā kļūdu apstrāde parasti darbojas. Kļūdai un tās apstrādātājam nav jābūt vienā rutīnā.

1. Vienkāršs `die` ar virkni izveido izņēmumu `X::AdHoc`, un `.^name` ziņo šo tipu. Pēc tam `.message` atgriež tekstu, kas tika padots `die`.

{% include nav.html %}
