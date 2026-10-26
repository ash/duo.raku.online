---
title: Noklusējuma vērtības
---

{% include menu.html %}

Dažreiz jūs izveidojat jaunu skalāru mainīgo, uzreiz tam neko nepiešķirot. Pat tad konteineris satur vērtību, savu noklusējuma vērtību. Precīzā noklusējuma vērtība ir atkarīga no mainīgā tipa.

Nākamā programma nav labākais veids, kā lietot Raku. Bet tā parāda ideju:

```raku
my $int;
say $int + 5;
```

Izvade satur `5`. Jūs to varējāt gaidīt, ja domājāt, ka `$int` noklusējuma vērtība ir `0`. Bet programma izdrukā arī brīdinājumu:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Lai būtu skaidrs, kāda ir vērtība, jūs varat vai nu to piešķirt paši:

```raku
my $int = 0;
say $int + 5; # 5
```

Vai arī jūs varat iestatīt noklusējuma vērtību ar iezīmi `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

Noklusējuma vērtībai nav jābūt nullei. Tā var būt jebkura vērtība, ko jūs uzskatāt par labu izvēli, piemēram:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
