---
title: '`for` ansae'
---

{% include menu.html %}

Ansa `for` instrumentum potens est. Multa elementa percurrit, unum post alterum. Exempli gratia, intervallum sumamus:

```raku
for 1..5 -> $n {
    say $n;
}
```

Quotiens ansa currit, variabilis `$n` proximum valorem ex intervallo accipit. Nota: non necesse est variabilem cum `my` declarare. Clausula codicis semel pro quoque elemento fontis datorum currit. Itaque programma numeros imprimit, unum in quaque linea:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma omnes valores percurrit quos [intervallum](/la/essentials/ranges) `1..5` dat. Hi sunt `1`, `2`, `3`, `4`, et `5`.

## Plus quam unum valorem sumere

Haec est proprietas iucunda Raku. Ansa plus quam unum elementum simul sumere potest. Programma sequens duos numeros imprimit quotiens ansa currit:

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
