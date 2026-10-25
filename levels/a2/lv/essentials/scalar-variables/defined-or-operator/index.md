---
title: Definē-vai operators
---

{% include menu.html %}

Dažreiz mainīgajam vēl nav vērtības. Tad jūs varat tā vietā izmantot citu vērtību. Tam ir operators `//`. To sauc par _definētais-vai_ operatoru.

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

Pirmā rinda piešķir vērtību mainīgajam `$a`. Tāpēc izteiksme `$a // 'gamma'` izmanto pašreizējo `$a` vērtību. Ar mainīgo `$b` ir citādi. Tam nav vērtības. Tāpēc `$b // 'delta'` dod vērtību labajā pusē. Programma izdrukā `delta`.

## //=

Kopā `//` un `=` veido operatoru `//=`. Tas piešķir vērtību tikai tad, kad mainīgais nav definēts.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
