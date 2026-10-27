---
title: 'Intercettare le eccezioni con `try`'
translations_gpt:
---

{% include menu.html %}

Quando qualcosa va storto in un programma Raku, viene sollevata un'_eccezione_. Succede, per esempio, quando manca un file o quando chiami tu stesso `die`. Di norma, un'eccezione che nessuno gestisce ferma il programma. Il blocco `try` ti permette di eseguire codice che potrebbe fallire, senza che il programma crolli.

Metti il codice rischioso dentro un blocco `try`. Se al suo interno viene sollevata un'eccezione, il blocco si ferma in quel punto. Ma il programma continua:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

Il `try` intercetta il `die`, quindi il programma non crolla. Prosegue dritto all'istruzione successiva e stampa:

```
Still works
```

Quando il blocco fallisce così, dà un valore non definito. Quindi `$result` non è definito:

```raku
say $result.defined; # False
```

L'eccezione intercettata è conservata nella variabile speciale `$!`. Da lì puoi leggere il suo messaggio:

```raku
say $!.message; # Boom!
```

Così `try` trasforma un errore fatale in qualcosa che il tuo programma può controllare e a cui può reagire. Se il blocco gira senza nessuna eccezione, `$result` contiene il suo valore e `$!` non è definito.

{% include nav.html %}
