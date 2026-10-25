---
title: 'Risinājums: Funkcija xʸ aprēķināšanai'
---

{% include menu.html %}

Šajā programmā izmantojiet operatoru `**`. Tas aprēķina pakāpi.

## Kods

Šeit ir risinājums:

```raku
sub f($x, $y) { $x ** $y }

say f(5, 3);
say f(2, 10);
say f(-4, 5);
```

🦋 Atrodiet programmu failā [function-x-to-the-power-of-y.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-x-to-the-power-of-y.raku).

## Izvade

Palaidiet programmu. Pārbaudiet, vai atbildes ir pareizas:

```console
$ raku exercises/functions/function-x-to-the-power-of-y.raku
125
1024
-1024
```

## Komentārs

Funkcija darbojas arī ar negatīvām pakāpēm. Piemēram:

```raku
say f(5, -1);  # 0.2
say f(10, -2); # 0.01
```

{% include nav.html %}
