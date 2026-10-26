---
title: Contesto elemento e lista
---

{% include menu.html %}

Altri due contesti decidono se qualcosa è una **lista** o un singolo **elemento**. Una lista ha più valori. I sigilli `@` e `$` si basano su questa differenza.

Nel _contesto lista_, un array si espande nei suoi elementi. Un ciclo `for` mette il suo argomento in contesto lista, quindi passa per ogni elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

Nel _contesto elemento_, lo stesso array agisce come un singolo valore. Il contestualizzatore `$( … )` imposta il contesto elemento. Quindi ora il ciclo vede una sola cosa e gira una volta:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Questo spiega cosa succede quando assegni un array a uno scalare. L'array viene impacchettato in un singolo elemento, e i suoi elementi non vengono copiati. Il motivo è che `my $x = @a` mette `@a` in contesto elemento. Nota che questo singolo elemento può essere un altro contenitore con molti elementi dentro:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

La variabile `$var` è un contenitore scalare, quindi ora contiene un singolo oggetto. Questo oggetto è un `Array`. Puoi dimostrarlo facilmente. Usa `$var` come una specie di riferimento ad array, come lo chiamerebbero altri linguaggi:

```raku
say $var[1]; # 2
```

Il suo compagno, il contestualizzatore `@( … )`, fa il contrario e imposta il contesto lista.

Esiste anche il _contesto sink_. È il contesto di un'istruzione il cui valore viene buttato via. Per esempio, una riga può esserci solo per il suo effetto collaterale. A volte un valore in contesto sink non fa niente di utile. Allora Raku può avvisare di un “useless use”. È un suggerimento utile: hai dimenticato di usare un risultato.

Quando scegli un sigillo, `$` o `@`, in realtà scegli un contesto. Dove serve, i contestualizzatori `$( )` e `@( )` ti permettono di cambiarlo.

{% include nav.html %}
