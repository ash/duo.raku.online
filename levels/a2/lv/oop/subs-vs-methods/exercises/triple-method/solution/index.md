---
title: 'Risinājums: Trīskāršošana kā metode'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Atrodiet programmu failā [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Izvade

```
21
```

## Komentāri

1. Šeit `triple` ir metode. Tā pieder objektam. Tā strādā ar paša objekta `n`. Jūs tai neko nepadodat.

1. Salīdziniet to ar apakšprogrammu. Tur dati nāk kā arguments. Šeit dati ir objektā. Abas programmas dod `21`.

{% include nav.html %}
