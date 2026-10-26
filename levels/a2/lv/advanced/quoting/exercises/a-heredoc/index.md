---
title: Heredoc
---

{% include menu.html %}

## Problēma

Uzrakstiet vēstuli, kas apstiprina pasūtījumu. Izmantojiet heredoc, kas *interpolē*. Veidojiet vēstuli no dažiem mainīgajiem. Mainīgie ir klienta vārds `$name`, prece `$item`, cena `$price` un daudzums `$count`. Cena ir par vienu preci. Heredoc ieliek tekstā mainīgo vērtības. Tas *arī* aprēķina kopsummu. Tam tekstā ir `{ … }` bloks (`$count * $price`).

Atkāpiet heredoc pamattekstu. Tam jābūt vienā līnijā ar kodu apkārt. Novietojiet aizverošo terminatoru ar tādu pašu atkāpi kā tekstu. Tad izvadē nav atkāpes. Izdrukājiet rezultātu.

## Piemērs

Ņemiet `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` un `$count = 3`. Tad programma izdrukā šo. Rindu sākumā nav atstarpju:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
