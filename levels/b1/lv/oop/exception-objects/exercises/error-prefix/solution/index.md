---
title: 'Risinājums: Prefikss ziņojumam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Izņēmuma objekta metode `.message` atgriež tekstu, kas padots `die`.

1. Pievienojot to `Error: ` beigās, sanāk galīgā rinda. Izņēmuma objekts ir vienkārši vērtība. Tāpēc tā paziņojumu jūs varat izmantot, kā vien gribat.

{% include nav.html %}
