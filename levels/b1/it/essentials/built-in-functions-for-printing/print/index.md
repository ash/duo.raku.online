---
title: '`print`'
---

{% include menu.html %}

Ecco cosa fa la routine incorporata `print`:

1. Chiama il metodo `Str` sui suoi argomenti per convertirli in una stringa.
1. Invia la stringa al flusso `STDOUT`.

Per i tipi di dati semplici, `print` dà quasi lo stesso output di [`say`](../say). Solo che non ha il carattere di nuova linea alla fine.

```raku
print 42;
print 'Raku';
```

I due valori vengono stampati subito uno dopo l'altro. Inoltre, l'intero output non finisce con una nuova linea.

```console
$ raku t.raku
42Raku
```

Con dati che contengono più valori, il risultato può essere diverso da quello di `say`. Per esempio, prova con array e hash:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Per separare le parti

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ecco come appare l'output:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Puoi anche chiamare la routine `print` come metodo:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
