---
title: Heredoc
---

{% include menu.html %}

## Problēma

Izmantojiet *interpolējošu* heredoc, lai izveidotu vēstuli, kas apstiprina pasūtījumu. Izmantojiet dažus mainīgos: klienta vārdu `$name`, preci `$item`, cenu `$price` un daudzumu `$count`. Cena ir par vienu preci. Heredoc ir jāinterpolē mainīgie. Tam *arī* jāaprēķina kopsumma tekstā ar iegultu `{ … }` bloku (`$count * $price`).

Atkāpiet heredoc pamattekstu, lai tas būtu vienā līnijā ar apkārtējo kodu. Novietojiet aizverošo terminatoru vienā līnijā ar tekstu. Tad atkāpe neparādās izvadē. Izdrukājiet rezultātu.

## Piemērs

Ņemiet `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` un `$count = 3`. Tad programma izdrukā šo tekstu bez atstarpēm rindu sākumā:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
