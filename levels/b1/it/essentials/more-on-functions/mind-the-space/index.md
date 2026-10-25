---
title: Attenzione agli spazi
---

{% include menu.html %}

In Raku, usare le funzioni è quasi sempre facile e non causa problemi. Ma dobbiamo avvisarti di una cosa.

## TL;DR

Non mettere uno spazio tra il nome della funzione e le parentesi con i suoi argomenti. Ma usa uno spazio dopo `for` e `if`.

## Storia lunga

Prendiamo una semplice funzione:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Prima di tutto, nota che non c'è uno spazio dopo il nome della funzione. La parentesi aperta con i parametri viene subito dopo il nome. Alcuni stili di codice in altri linguaggi possono richiedere uno spazio lì. Raku lo accetta, ma non è una buona abitudine da seguire:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Quando chiami la funzione, l'assenza dello spazio è importante. Se chiami la funzione senza parentesi, devi avere uno spazio dopo il suo nome:

```raku
f 5, 6;
```

Ma se usi le parentesi, non ci può essere uno spazio prima di esse. Questa chiamata è corretta:

```raku
f(5, 6);
```

E questa chiamata è sbagliata:

```raku
f (5, 6);
```

Tale codice causa un'eccezione:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku vede la chiamata con uno spazio, `f (5, 6)`, in modo diverso. Pensa che tu voglia passare un solo argomento, `(5, 6)`, alla funzione. È facile controllare il tipo di questo argomento. Basta cambiare la funzione in modo che prenda un solo argomento:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Quindi, quando chiami `f (5, 6)`, passi una [lista](/it/essentials/positionals/lists) alla funzione. La lista viene passata come un unico elemento.

## Quando è necessario lo spazio

In alcuni casi, lo spazio serve davvero. Succede quando usi le parentesi con una parola chiave come `if`, `for` o `loop`. Il seguente codice è sbagliato:

```raku
if(True != False) {
    say 'OK';
}
```

Il messaggio di errore spiega il problema:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Con `if`, le parentesi non sono affatto necessarie. Quindi, se non le usi, il problema non può apparire. Ma in alcuni casi ti servono, per esempio con `loop`. Allora lo spazio è obbligatorio:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In questo codice succede la stessa cosa: il compilatore prende `loop(...)` per una chiamata di funzione. Aggiungi uno spazio per risolvere il problema. Oppure, ancora meglio, riscrivi questa parte del codice con `for`.

## Conclusione

In breve, per evitare questi problemi, segui due regole. Non mettere uno spazio tra il nome della funzione e le parentesi con i suoi argomenti. Inoltre, cerca di evitare le parentesi in altre parti del linguaggio, come il controllo del flusso.

{% include nav.html %}
