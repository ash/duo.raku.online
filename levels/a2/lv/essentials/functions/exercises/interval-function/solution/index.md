---
title: 'Risinājums: Intervāla funkcija'
---

{% include menu.html %}

Funkcijā ir `if` ar trim zariem. Pirmajiem diviem zariem ir tests. Testa rezultāts ir `True` vai `False`. Trešajam zaram tests nav vajadzīgs. Skaitlis var neizturēt pirmos divus testus. Tad paliek tikai trešais zars.

## Kods

Šeit ir risinājums:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Atrodiet programmu failā [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Izvade

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
