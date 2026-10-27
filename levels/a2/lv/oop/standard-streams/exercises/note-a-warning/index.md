---
title: 'Brīdinājums ar `note`'
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Programma strādā ar vērtību. Vērtība ir negatīva. Ja vērtība ir zem nulles, sūtiet brīdinājumu uz standarta kļūdu plūsmu. Lietojiet tam `note`. Tad ar `say` sūtiet īsto rezultātu uz standarta izvadi. Rezultāts ir skaitļa absolūtā vērtība. Tas ir skaitlis bez mīnusa zīmes. Lietojiet vērtību `-3`.

## Piemērs

Jūs redzat ekrānā abas rindas:

```
Warning: the value is negative
3
```

Šeit mēs izmetam standarta kļūdu plūsmu. Paliek tikai rezultāts:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
