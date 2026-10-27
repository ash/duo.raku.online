---
title: 'Risinājums: Trīskāršošana kā apakšprogramma'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Atrodiet programmu failā [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Izvade

```
21
```

## Komentāri

1. Šeit `triple` ir apakšprogramma. Tā stāv viena pati. Vērtību savam darbam tā saņem kā argumentu.

1. Otrs vingrinājums risina to pašu uzdevumu ar metodi. Tā jūs varat salīdzināt abus veidus.

{% include nav.html %}
