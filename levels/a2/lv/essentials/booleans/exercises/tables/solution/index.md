---
title: 'Risinājums: Loģiskās tabulas'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu. Programma izdrukā visus Būla operāciju rezultātus.

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

Palaidiet programmu. Tā izdrukā šo tabulu.

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

Ievērojiet, ka šeit Būla operācijām nav vajadzīgas iekavas. Tas ir prioritātes dēļ. Prioritāte ir secība, kādā Raku veic operācijas. Būla operācijām ir augstāka prioritāte. Tāpēc Raku tās veic pirmās. Bet ar virknes konkatenāciju iekavas ir vajadzīgas:

```raku
say 'True && True ir ' ~ (True && True);
```

Jūs varat arī ielikt kodu virknē. To sauc par [koda interpolāciju](/lv/essentials/strings/code-interpolation).

{% include nav.html %}
