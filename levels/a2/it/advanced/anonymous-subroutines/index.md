---
title: Subroutine anonime
translations_gpt:
---

{% include menu.html %}

Una subroutine non ha bisogno di un nome. Una subroutine senza nome è _anonima_. La scrivi come una subroutine normale, solo senza nome. Di solito la tieni in una variabile. Poi puoi chiamarla più tardi.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variabile `$double` contiene la subroutine. `$double(5)` chiama la subroutine con l'argomento `5`.

## Blocchi a freccia

Raku ha un modo più breve per scrivere la stessa cosa. È il _blocco a freccia_ (pointy block). Ha una freccia, `->`, prima dei parametri. Non ti serve la parola `sub`. Non ti servono neanche le parentesi intorno ai parametri:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Di solito una piccola subroutine anonima si scrive così.

## Il sigillo `&`

Forse vuoi usare un nome per la chiamata, non una variabile `$`. Allora crea la variabile con il sigillo `&`. Ora puoi chiamarla senza il sigillo. Funziona proprio come una subroutine normale:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Darla a un'altra funzione

Non devi per forza tenere una subroutine anonima in una variabile. È solo un valore. Quindi puoi darla direttamente a una funzione. Alcune funzioni hanno bisogno di un valore così, per esempio `map`, `grep` o `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Qui il blocco a freccia è la subroutine anonima. `map` lo chiama una volta per ogni elemento. In realtà, lo fai già di continuo. Spesso dai un blocco `{ ... }` o `-> $x { ... }` a `map` e `grep`. Ognuno di questi è una piccola subroutine anonima. La scrivi proprio dove ti serve. Non le dai prima un nome.

{% include nav.html %}
