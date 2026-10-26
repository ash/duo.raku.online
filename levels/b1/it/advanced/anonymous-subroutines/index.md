---
title: Subroutine anonime
translations_gpt:
---

{% include menu.html %}

Una subroutine non deve per forza avere un nome. Una subroutine _anonima_ è proprio come una normale, solo senza nome. Di solito viene salvata in una variabile, così puoi chiamarla più tardi.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variabile `$double` contiene la subroutine. Poi `$double(5)` la chiama con l'argomento `5`.

## Blocchi a freccia

Raku ha un modo più breve per scrivere la stessa cosa: il _blocco a freccia_ (pointy block). La freccia `->` viene prima dei parametri. Non ti servono né la parola `sub` né le parentesi intorno ai parametri:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Molto spesso una piccola subroutine anonima si scrive in questo modo.

## Il sigillo `&`

Forse vuoi chiamare la subroutine per nome, non attraverso una variabile `$`. In questo caso, dichiara la variabile con il sigillo `&`. Poi puoi chiamarla senza il sigillo, proprio come una subroutine normale:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Passarla a un'altra funzione

Non è affatto necessario salvare una subroutine anonima in una variabile. È solo un valore. Quindi puoi passarla direttamente a una funzione che ne ha bisogno. Alcuni esempi sono `map`, `grep` o `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Qui il blocco a freccia è la subroutine anonima. `map` lo chiama una volta per ogni elemento. In realtà, è quello che hai sempre fatto finora. Hai passato molti blocchi `{ ... }` e `-> $x { ... }` a `map` e `grep`. Ognuno di essi è una piccola subroutine anonima. La scrivi proprio dove ti serve, invece di darle prima un nome.

{% include nav.html %}
