---
title: 'Risinājums: Prefikss ziņojumam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Atrodiet programmu failā [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Izvade

```
Error: timeout
```

## Komentāri

1. Izņēmuma objektam ir metode `.message`. Tā dod tekstu, ko jūs padevāt `die`.

1. Mēs ieliekam `Error: ` šī teksta priekšā. Tā sanāk galīgā rinda. Izņēmuma objekts ir vienkārši vērtība. Tāpēc tā paziņojumu jūs varat izmantot, kā vien gribat.

{% include nav.html %}
