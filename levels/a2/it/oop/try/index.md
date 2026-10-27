---
title: 'Intercettare le eccezioni con `try`'
translations_gpt:
---

{% include menu.html %}

A volte qualcosa va storto in un programma Raku. Per esempio, manca un file, o il codice chiama `die`. Allora il programma solleva un errore. Questo tipo di errore si chiama _eccezione_. Se nessun codice gestisce l'eccezione, il programma si ferma. Questo è il comportamento predefinito. Qui ti aiuta il blocco `try`. È un blocco di codice con la parola `try` davanti. Il codice in questo blocco può fallire. Ma il programma non crolla.

Metti il codice che può fallire in un blocco `try`. Forse il codice solleva un'eccezione dentro il blocco. Allora il blocco si ferma in quel punto. Ma il programma va avanti:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

Il `try` intercetta il `die`. Quindi il programma non crolla. Va dritto all'istruzione successiva. Stampa:

```
Still works
```

Qui il blocco fallisce. Allora dà un valore non definito. Quindi `$result` non è definito:

```raku
say $result.defined; # False
```

Raku conserva l'eccezione intercettata nella variabile speciale `$!`. Da lì puoi leggere il messaggio dell'eccezione:

```raku
say $!.message; # Boom!
```

Così `try` aiuta con un errore fatale. Senza `try`, un errore così ferma il programma. Con `try`, il tuo programma può guardare l'errore. Poi può reagire. E se il blocco gira senza un'eccezione? Allora `$result` contiene il valore del blocco. In questo caso `$!` non è definito.

{% include nav.html %}
