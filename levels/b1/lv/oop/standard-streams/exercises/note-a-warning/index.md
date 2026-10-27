---
title: 'Brīdinājums ar `note`'
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Programma strādā ar vērtību, un vērtība izrādās negatīva. Ja vērtība ir zem nulles, izmantojiet `note`, lai nosūtītu brīdinājumu uz standarta kļūdu plūsmu. Izmantojiet `say`, lai nosūtītu īsto rezultātu, absolūto vērtību, uz standarta izvadi. Izmantojiet vērtību `-3`.

## Piemērs

Ekrānā parādās abas rindas:

```
Warning: the value is negative
3
```

Ja jūs izmetat standarta kļūdu plūsmu, paliek tikai rezultāts:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
