---
title: Attenzione agli spazi
---

{% include menu.html %}

Le funzioni in Raku sono quasi sempre facili da usare. Di solito, non causano problemi. Ma fai attenzione a una cosa.

## TL;DR

Non scrivere uno spazio tra il nome della funzione e le parentesi. Le parentesi contengono gli argomenti. Ma metti uno spazio dopo `for` e `if`.

## Storia lunga

Ecco una funzione semplice:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Prima, guarda il nome della funzione. La parentesi aperta viene subito dopo, senza spazio. I parametri sono dentro queste parentesi. Alcuni stili di codice in altri linguaggi vogliono uno spazio lì. Anche Raku lo accetta. Ma questo non è un buon modo di scrivere codice:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

In una chiamata di funzione, è importante non avere lo spazio. A volte chiami una funzione senza parentesi. Allora devi mettere uno spazio dopo il nome della funzione:

```raku
f 5, 6;
```

Ma prima delle parentesi non ci deve essere uno spazio. Questa chiamata è corretta:

```raku
f(5, 6);
```

E questa chiamata è sbagliata:

```raku
f (5, 6);
```

Questo codice causa un'eccezione:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Guarda la chiamata con uno spazio: `f (5, 6)`. Raku pensa che passi un solo argomento alla funzione. Questo argomento è `(5, 6)`. Puoi controllare facilmente il tipo di questo argomento. Cambia la funzione. La funzione deve prendere un solo argomento:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Quindi, la chiamata `f (5, 6)` passa una [lista](/it/essentials/positionals/lists) alla funzione. Tutta la lista è un solo argomento.

## Quando serve lo spazio

A volte serve uno spazio. Succede quando usi le parentesi dopo una parola chiave. Per esempio, la parola chiave può essere `if`, `for` o `loop`. Questo codice è sbagliato:

```raku
if(True != False) {
    say 'OK';
}
```

Il messaggio di errore ti dice cosa c'è di sbagliato:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Con `if`, le parentesi non servono per niente. Senza di esse, questo problema non può succedere. Ma a volte le parentesi servono, per esempio con `loop`. Allora devi mettere uno spazio:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In questo codice succede la stessa cosa. Il compilatore pensa che `loop(...)` sia una chiamata di funzione. Aggiungi uno spazio per risolvere il problema. Oppure, meglio, scrivi questo codice con `for`.

## Conclusione

Allora, ecco il punto principale. Non mettere uno spazio tra il nome di una funzione e le sue parentesi. Così eviti questi problemi. Inoltre, quando puoi, cerca di non usare le parentesi in altri punti. Per esempio, con `if` e `for` non servono.

{% include nav.html %}
