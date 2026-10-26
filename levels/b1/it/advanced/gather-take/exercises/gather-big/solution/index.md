---
title: 'Solution: Raccogliere fino al pieno'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Puoi trovare il codice sorgente nel file [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Output

```
[1 2 3 4]
```

## Commenti

1. Il ciclo riceve un intervallo di cento numeri, molti più di quelli che userà. Va bene, perché il ciclo si ferma da solo. Appena `$sum` supera `10`, `last` esce dal ciclo. Il resto dei numeri non viene mai guardato.

1. L'ordine dentro il blocco conta. Prima aggiungiamo a `$sum` e controlliamo il limite prima di prendere il numero. Così il numero che porta il totale oltre `10` (qui, `5`) non viene raccolto. Il totale arriva esattamente a `10` dopo `4`, quindi la lista è `1, 2, 3, 4`.

1. Con `for`, `gather`/`take` può uscire in anticipo, ma `grep` non può farlo. `grep` scorre sempre tutta la lista, mentre qui scegliamo noi quando fermarci.

{% include nav.html %}
