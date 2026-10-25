---
title: Concatenazione di stringhe
---

{% include menu.html %}

Se hai due stringhe, puoi unirle e ottenere una nuova stringa, più lunga. Questo si chiama concatenazione di stringhe. In Raku, concateni le stringhe con—indovina un po'?—l'operatore di concatenazione. Questo operatore è una tilde, `~`. Per concatenare due stringhe, metti `~` tra di loro:

```raku
say 'Hello, ' ~ 'World!';
```

Se le nostre stringhe sono in variabili, possiamo ‘concatenare variabili’. Beh, per essere precisi, concateniamo le stringhe che quelle variabili contengono:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Oppure puoi creare una nuova variabile che contiene il risultato della concatenazione:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenazione con assegnazione

Per aggiungere una nuova stringa alla fine di una variabile, usa questa forma:

```raku
# Invece di 
$str = $str ~ $another-str;

# usa:
$str ~= $another-str;
```

{% include nav.html %}
