---
title: Concatenazione di stringhe
---

{% include menu.html %}

Puoi unire due stringhe. Così ottieni una nuova stringa, più lunga. La chiamiamo concatenazione di stringhe. In Raku, concateni le stringhe con un operatore. Indovini il suo nome? È l'operatore di concatenazione! Questo operatore è una tilde: `~`. Per concatenare due stringhe, metti `~` tra di loro:

```raku
say 'Hello, ' ~ 'World!';
```

A volte le stringhe sono in variabili. Allora possiamo ‘concatenare le variabili’. Beh, in realtà concateniamo le stringhe in queste variabili:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Puoi anche mettere il risultato in una nuova variabile:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenazione e assegnazione in un solo passo

A volte vuoi aggiungere una stringa alla fine di una variabile. Allora usa questa forma:

```raku
# Invece di 
$str = $str ~ $another-str;

# usa:
$str ~= $another-str;
```

{% include nav.html %}
