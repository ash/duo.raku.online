---
title: '`for` ansae'
---

{% include menu.html %}

Ansa `for` valde utilis est. Per multa elementa it, unum post alterum. Exempli gratia, sume intervallum:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` singulis vicibus proximum valorem ex intervallo accipit. Non necesse est `my` ante `$n` scribere. Clausula semel pro quoque valore intervalli currit. Itaque programma numeros imprimit, unum in quaque linea:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma per omnes valores [intervalli](/la/essentials/ranges) `1..5` it. Hi valores sunt `1`, `2`, `3`, `4`, et `5`.

## Plus quam unus valor simul

In Raku, ansa duo vel plura elementa singulis vicibus sumere potest. Hoc programma duos numeros simul imprimit:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Hoc est quod programma imprimit:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
