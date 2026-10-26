---
title: Definire un enum
---

{% include menu.html %}

Per dichiarare un enum, scrivi la parola chiave `enum`, un nome e la lista dei nomi delle costanti:

```raku
enum Colour <red green blue>;
```

Ora c'è un nuovo tipo, `Colour`, con tre costanti: `red`, `green` e `blue`. Puoi usare ogni costante direttamente con il suo nome:

```raku
say red;   # red
say green; # green
```

Dietro ogni nome c'è un numero. Raku assegna questi numeri in automatico, partendo da zero, nell'ordine della tua lista. Quindi `red` è `0`, `green` è `1` e `blue` è `2`. Dato che i valori hanno un ordine, puoi confrontare le costanti:

```raku
say red < blue; # True
```

Puoi dare a una variabile l'enum come tipo. Allora accetta solo quelle costanti:

```raku
my Colour $c = green;
say $c; # green
```

Il nome di una costante può essere uguale a un altro nome nel tuo programma. Allora puoi sempre raggiungere la costante con il nome dell'enum e `::`:

```raku
say Colour::red; # red
```

Un enum dà un nome e un tipo a un gruppo di costanti collegate. Il codice che le usa è molto più chiaro del codice con semplici numeri. Il prossimo argomento tratta [i numeri dietro i nomi](/it/advanced/enumerations/values-and-keys).

{% include nav.html %}
