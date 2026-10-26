---
title: Contesto numerico, stringa e booleano
---

{% include menu.html %}

Tre contesti sono molto comuni. Fanno comportare un valore come un numero, una stringa o un valore Booleano. Per ognuno di essi c'è un operatore prefisso che imposta il contesto direttamente:

* `+` — contesto numerico
* `~` — contesto stringa
* `?` — contesto Booleano

Con un array, `+` dà la sua lunghezza, e `~` dà i suoi elementi uniti da spazi. `?` mostra se l'array ha almeno un elemento:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Un array vuoto dà `0` in contesto numerico e `False` in contesto Booleano:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Non devi sempre scrivere questi operatori tu stesso. Raku può impostare il contesto giusto per te. L'aritmetica mette i suoi valori in contesto numerico, e l'unione di stringhe li mette in contesto stringa. `if`, `while` e `and`/`or` mettono la loro condizione in contesto Booleano:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Quindi `if @array { … }` funziona proprio come ti aspetteresti. Un array che non è vuoto è vero. Gli operatori prefisso sono un modo per chiedere le stesse conversioni direttamente.

Insieme a un `if` postfisso, questo ti permette di scrivere codice breve e chiaro:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
