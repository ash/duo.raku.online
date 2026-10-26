---
title: Heredoc
---

{% include menu.html %}

Un _heredoc_ è una forma di quoting per il testo su più righe. Non usa delimitatori intorno al testo. Invece, indichi una parola terminatore con `:to`. La stringa inizia dalla riga successiva. Continua fino a una riga che contiene solo quella parola:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Questo stampa:

```
Hello,
World!
```

Il terminatore segna dove finisce il testo. Qui è `END`, ma va bene qualsiasi parola. Nota il `print`. Il testo tiene il carattere di nuova riga prima del terminatore. Quindi finisce già con un'interruzione di riga. Con `say` ne avresti una seconda e una riga vuota alla fine. L'heredoc inizia con `q:to`, quindi il testo non viene interpolato. Per interpolare le variabili, usa `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Ecco un dettaglio utile. L'**indentazione del terminatore di chiusura** viene tolta da ogni riga del testo. Così puoi indentare un heredoc come il codice intorno. Quell'indentazione non finisce nella stringa:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Questo stampa gli stessi `Hello,` e `World!` del primo esempio. Qui il terminatore di chiusura `END` è indentato di otto spazi. Quindi da ogni riga vengono tolti otto spazi. La stringa restituita è solo `Hello,\nWorld!`, senza spazi all'inizio delle righe.

Il terminatore di chiusura stabilisce quanti spazi vengono tolti. Quindi ogni riga del testo deve avere almeno quell'indentazione. Se una riga ha meno spazi all'inizio, Raku non può togliere tutta la quantità. Allora avvisa: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Per evitarlo, non indentare il terminatore più della riga meno indentata. Gli heredoc sono la scelta naturale per template, messaggi e qualsiasi testo su più righe.

{% include nav.html %}
