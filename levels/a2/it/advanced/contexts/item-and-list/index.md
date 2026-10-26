---
title: Contesto elemento e lista
---

{% include menu.html %}

Ci sono altri due contesti. Decidono una cosa. Un valore è una **lista** di più valori? Oppure è un solo **elemento**? I sigilli `@` e `$` mostrano questa differenza.

Nel _contesto lista_, un array diventa i suoi singoli elementi. Un ciclo `for` mette il suo argomento in contesto lista. Così il ciclo passa su ogni elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

Nel _contesto elemento_, lo stesso array è un solo valore. Il contestualizzatore `$( … )` imposta il contesto elemento. Ora il ciclo vede una sola cosa. Così gira una volta:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Il contesto elemento spiega anche questo. Assegni un array a uno scalare. Lo scalare riceve tutto l'array come un solo elemento. Non copia gli elementi. Il motivo è che `my $x = @a` mette `@a` in contesto elemento. Nota che questo unico elemento può essere un altro contenitore. E questo contenitore può avere molti elementi dentro:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` è un contenitore scalare. Quindi ora contiene un solo oggetto. Questo oggetto è un `Array`. Puoi verificarlo facilmente. Usa `$var` come una specie di riferimento ad array. Così lo chiamano altri linguaggi:

```raku
say $var[1]; # 2
```

Il contestualizzatore `@( … )` fa il contrario. Imposta il contesto lista.

Esiste anche il _contesto sink_. Nel contesto sink, nessuno usa il valore di un'istruzione. Raku butta semplicemente via il valore. Per esempio, una riga può esserci solo per il suo effetto collaterale. Un effetto collaterale è un'azione in più del codice, come stampare. A volte un valore in contesto sink non fa niente di utile. Allora Raku può avvisarti di un “useless use”. Questo è un suggerimento utile. Probabilmente hai dimenticato di usare un risultato.

Il sigillo, `$` o `@`, è in realtà una scelta di contesto. A volte ti serve un altro contesto. Allora i contestualizzatori `$( )` e `@( )` lo cambiano.

{% include nav.html %}
