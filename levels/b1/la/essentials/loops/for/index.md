---
title: '`for` ansae'
---

{% include menu.html %}

Ansa `for` instrumentum potens est ad plura elementa singillatim percurrenda. Exempli gratia, intervallum sumamus:

```raku
for 1..5 -> $n {
    say $n;
}
```

In hoc programmate, variabilis `$n` in quaque iteratione proximum valorem ex intervallo accipit. Animadverte te variabilem cum `my` declarare non debere. Clausula codicis toties repetitur quot sunt elementa in fonte datorum. Itaque programma numeros lineam post lineam imprimit:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma omnes valores percurrit quos [intervallum](/la/essentials/ranges) `1..5` producit. Hi sunt `1`, `2`, `3`, `4`, et `5`.

## Plus quam unum valorem sumere

Proprietas iucunda Raku est quod plus quam unum elementum in una iteratione sumere potes. Programma sequens duos numeros imprimit quotiens ansa currit:

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
