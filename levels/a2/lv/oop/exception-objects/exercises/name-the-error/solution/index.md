---
title: 'Risinājums: Nosauciet kļūdu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `die` notiek `risky` iekšā. Bet izņēmums iet augšup pie izsaucēja. Izsaucējs ir kods, kas izsauca `risky`. Šeit tas ir bloks. `CATCH` šajā blokā apstrādā izņēmumu. Tā kļūdu apstrāde parasti darbojas. Kods, kas apstrādā kļūdu, ir tās apstrādātājs. Kļūda un tās apstrādātājs var būt dažādās rutīnās.

1. Vienkāršs `die` ar virkni izveido izņēmumu `X::AdHoc`. `.^name` parāda šo tipu. `.message` atgriež tekstu, ko mēs devām `die`.

{% include nav.html %}
