---
title: Citazione di array di stringhe
---

{% include menu.html %}

A volte gli elementi di un array sono stringhe corte senza spazi. Raku ha un modo comodo per dare i valori a un array così.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Puoi mettere spazi in più intorno alle parentesi angolari. Oppure puoi scriverle senza spazi. Decidi tu. Il compilatore accetta tutti e due i modi.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Tutti e due i modi danno lo stesso risultato di questa versione semplice:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array o Lista

Nota una cosa negli esempi sopra. La citazione `< . . . >` crea una `List`. Non crea un `Array`. Puoi controllarlo con il metodo `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Ma puoi assegnarla a un array. Allora ottieni un array con gli elementi della lista.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
