---
title: '`for` ansae'
---

{% include menu.html %}

Ansa `for` instrumentum validum est. Per multa elementa it, unum post alterum. Exempli gratia, intervallum sumamus:

```raku
for 1..5 -> $n {
    say $n;
}
```

In hoc programmate, variabilis `$n` singulis vicibus proximum valorem ex intervallo accipit. Non debes variabilem cum `my` declarare. Clausula codicis semel pro quoque elemento intervalli currit. Itaque programma numeros imprimit, unum in quaque linea:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma per omnes valores [intervalli](/la/essentials/ranges) `1..5` it. Hi sunt `1`, `2`, `3`, `4`, et `5`.

## Plus quam unus valor simul

In Raku, ansa plus quam unum elementum simul sumere potest. Hoc programma singulis vicibus duos numeros imprimit:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Hic est exitus programmatis:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
