---
title: 'Risinājums: Join ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say <a b c>.reverse.join: '-';
```

🦋 Atrodiet programmu failā [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Izvade

```
c-b-a
```

## Komentāri

1. `.reverse` ir ķēdes vidū. Tāpēc tas patur savu parasto formu. `join` ir pēdējais izsaukums. Tāpēc tas var lietot kolu. Kols nodod tam `'-'` tieši tāpat kā `join('-')`.

1. Pēc `.reverse` saraksts ir `c, b, a`. Tad `join` ieliek defises starp vārdiem. Rezultāts ir `c-b-a`. Kola forma darbojas arī ar parastām vērtībām, ne tikai ar blokiem.

{% include nav.html %}
