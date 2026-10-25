---
title: 'Risinājums: Loģiskās tabulas'
---

{% include menu.html %}

Šeit ir viena iespējama programma. Tā izdrukā visu Būla operāciju rezultātus.

## Kods

```raku
say 'True && True ir ', True && True; 
say 'True && False ir ', True && False;
say 'False && True ir ', False && True;
say 'False && False ir ', False && False;

say 'True || True ir ', True || True; 
say 'True || False ir ', True || False;
say 'False || True ir ', False || True;
say 'False || False ir ', False || False;

say 'True ^^ True ir ', True ^^ True; 
say 'True ^^ False ir ', True ^^ False;
say 'False ^^ True ir ', False ^^ True;
say 'False ^^ False ir ', False ^^ False;
```

🦋 Pilnu kodu var atrast failā [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Izvade

Kad jūs palaižat programmu, tā izdrukā šādu tabulu.

```console
$ raku tables.raku
True && True ir True
True && False ir False
False && True ir False
False && False ir False
True || True ir True
True || False ir True
False || True ir True
False || False ir False
True ^^ True ir Nil
True ^^ False ir True
False ^^ True ir True
False ^^ False ir False
```

## Komentāri

Ievērojiet, ka šeit Būla operācijām nav vajadzīgas iekavas. Tām ir augstāka prioritāte. Bet tā tas nav, ja jūs izmantojat virknes konkatenāciju:

```raku
say 'True && True ir ' ~ (True && True);
```

Cits veids ir izmantot [koda interpolāciju](/lv/essentials/strings/code-interpolation).

{% include nav.html %}
