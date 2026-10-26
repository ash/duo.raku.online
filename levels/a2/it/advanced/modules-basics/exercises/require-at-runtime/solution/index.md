---
title: 'Solution: Caricare a runtime'
translations_gpt: La soluzione di 'Caricare a tempo di esecuzione'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `require` carica il modulo a tempo di esecuzione, non al momento della compilazione. Da solo non importa niente. Quindi Raku non conosce il nome `hello`.

1. La lista `<&hello>` dice a `require` di importare questo solo nome. Dopo questa istruzione, puoi chiamare `hello('Sam')` direttamente. Il risultato è `Hello, Sam!`.

1. Ecco *perché* abbiamo `require`. Lavora a tempo di esecuzione. Quindi può stare dentro un `if`. Con `--quiet`, il programma salta questo ramo. Così non carica mai il modulo. Un `use` carica sempre il modulo. Lavora al momento della compilazione.

{% include nav.html %}
