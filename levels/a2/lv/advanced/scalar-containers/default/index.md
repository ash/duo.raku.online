---
title: Noklusējuma vērtības
---

{% include menu.html %}

Dažreiz jūs izveidojat skalāru mainīgo. Bet jūs tam vēl nepiešķirat vērtību. Konteineris tomēr glabā vērtību. Tā ir tā noklusējuma vērtība. Noklusējums ir atkarīgs no mainīgā tipa.

Šī programma neizmanto Raku labākajā veidā. Bet tā parāda ideju:

```raku
my $int;
say $int + 5;
```

Izvadē ir `5`. Varbūt jūs to gaidījāt. Varbūt jūs domājāt, ka `$int` noklusējuma vērtība ir `0`. Bet programma izdrukā arī brīdinājumu:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Ir divi veidi, kā novērst šīs šaubas. Jūs varat piešķirt vērtību tieši:

```raku
my $int = 0;
say $int + 5; # 5
```

Vai arī jūs varat dot noklusējuma vērtību ar iezīmi `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

Noklusējuma vērtībai nav jābūt nullei. Tā var būt jebkura vērtība, kas jums šķiet laba. Piemēram:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
