---
title: '`print`'
---

{% include menu.html %}

La routine incorporata `print` fa due cose:

1. Converte i suoi argomenti in una stringa. Per farlo, chiama il metodo `Str` sugli argomenti.
1. Invia la stringa al flusso `STDOUT`.

Con i tipi di dati semplici, `print` funziona come [`say`](../say). Ma non aggiunge un carattere di nuova linea alla fine.

```raku
print 42;
print 'Raku';
```

Il programma stampa i valori uno dopo l'altro. Inoltre, non c'è una nuova linea alla fine di tutto l'output.

```console
$ raku t.raku
42Raku
```

Alcuni tipi di dati contengono molti valori. Con questi, `print` e `say` possono dare risultati diversi. Prova array e hash, per esempio:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Per separare le parti

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ecco l'output:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Puoi anche chiamare `print` come metodo:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
