---
title: 'Solution: Caricare a runtime'
translations_gpt: La soluzione di 'Caricare a tempo di esecuzione'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

Il programma, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Output

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Commenti

1. `require` carica il modulo a tempo di esecuzione invece che al momento della compilazione. Da solo non importa niente. Per questo Raku non conoscerebbe un semplice `hello`.

1. La lista `<&hello>` dice a `require` di importare quel solo simbolo. Così, dopo questa istruzione, puoi chiamare `hello('Sam')` direttamente, e il risultato è `Hello, Sam!`.

1. Ecco *a cosa serve* `require`. Siccome lavora a tempo di esecuzione, può stare dentro un `if`. Quando passi `--quiet`, quel ramo viene saltato e il modulo non viene mai caricato. Un `use` al momento della compilazione non potrebbe evitare di caricarlo.

{% include nav.html %}
