---
title: 'Solution: Parte frazionaria'
---

{% include menu.html %}

Come ottieni la parte frazionaria di un numero? Togli la parte intera. Per avere la parte intera, converti il numero in un `Int`.

## Codice

Ecco una soluzione:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Trova il programma nel file [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Output

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Commento

Prova il programma anche con numeri negativi. Per esempio:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Anche qui il risultato è corretto:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
