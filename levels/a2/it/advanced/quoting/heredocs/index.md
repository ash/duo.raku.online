---
title: Heredoc
---

{% include menu.html %}

Un _heredoc_ è una forma di quoting per il testo su molte righe. Non ha delimitatori intorno al testo. Invece, dai una parola terminatore con `:to`. Il terminatore segna la fine. La stringa inizia dalla riga dopo. Continua fino a una riga con solo quella parola:

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

Il terminatore segna la fine del testo. Qui è `END`, ma puoi usare qualsiasi parola. Guarda il `print`. Il testo tiene il carattere di nuova riga prima del terminatore. Così il testo finisce già con un a capo. `say` ne aggiunge un secondo. Allora hai una riga vuota alla fine. Questo heredoc inizia con `q:to`. Quindi Raku non interpola il testo. Per interpolare le variabili, usa `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Ecco un dettaglio utile. Guarda l'**indentazione del terminatore di chiusura**. Raku la toglie da ogni riga del testo. Così puoi indentare un heredoc come il codice intorno. L'indentazione non entra nella stringa:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Questo stampa gli stessi `Hello,` e `World!` del primo esempio. Qui il terminatore `END` ha otto spazi davanti. Così Raku toglie otto spazi da ogni riga. La funzione restituisce solo `Hello,\nWorld!`. Non ci sono spazi all'inizio.

Il terminatore di chiusura decide quanti spazi toglie Raku. Quindi ogni riga del testo ha bisogno di almeno quegli spazi. Forse una riga ha meno spazi. Allora Raku non può toglierli tutti. Avvisa: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Evita questo avviso. Non indentare il terminatore più delle righe del testo. Gli heredoc sono la scelta naturale per template e messaggi. In realtà, vanno bene per qualsiasi testo su più righe.

{% include nav.html %}
