---
title: Masīvi
translations_gpt:
---

{% include menu.html %}

Masīvs ir sakārtots konteineris, un arī tā elementi ir skalāri konteineri.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Sigils `@` nozīmē, ka šāds mainīgais uzvedas kā `Positional` objekts. Tas ļauj izmantot indeksus, lai nolasītu atsevišķus elementus:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Katrs elements ir skalārs konteineris, tāpēc jūs varat tam piešķirt jaunu vērtību. Jūs to darāt tāpat kā ar atsevišķu skalāru mainīgo:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Jūs varat piešķirt arī cita tipa vērtību, piemēram:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Tieši tas padara masīvus _maināmus_, tas ir, tādus, ko var mainīt. Katra vieta ir konteineris, kas var saņemt jaunu vērtību. Nākamajā tēmā jūs redzēsiet, ka [saraksti](/lv/advanced/ordered-containers/lists) uzvedas citādi.

{% include nav.html %}
