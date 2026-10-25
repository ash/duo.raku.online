---
title: Citazione di array di stringhe
---

{% include menu.html %}

Alcuni array di stringhe hanno solo stringhe corte, senza spazi. Per questi array, Raku offre una sintassi comoda per impostare i loro valori.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Puoi decidere se aggiungere o no spazi in più intorno alle parentesi angolari. Il compilatore accetta entrambe le opzioni.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Entrambe le forme sono uguali a questa versione semplice e diretta:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array vs Lista

Nota che negli esempi sopra la citazione `< . . . >` crea una `List`, non un `Array`. Puoi controllarlo chiamando il metodo `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Però, se la assegni a un array, l'array riceve gli stessi elementi.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
