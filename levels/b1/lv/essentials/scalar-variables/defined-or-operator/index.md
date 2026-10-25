---
title: Definē-vai operators
---

{% include menu.html %}

Tā sauktais _definētais-vai_ operators `//` palīdz, kad mainīgajam vēl nav vērtības. Tādā gadījumā tas dod jums citu vērtību, ko izmantot tā vietā.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Šī programma izdrukā:

```
alpha
delta
```

Mainīgā `$a` vērtība ir iestatīta pirmajā rindā. Tāpēc izteiksme `$a // 'gamma'` izmanto pašreizējo `$a` vērtību. Savukārt mainīgais `$b` nesaņēma sākuma vērtību. Tāpēc `$b // 'delta'` atgriež operandu labajā pusē, un programma izdrukā `delta`.

## //=

Kad jūs apvienojat `//` un `=`, jūs iegūstat operatoru `//=`. Tas piešķir vērtību tikai tad, ja mainīgais nav definēts.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
