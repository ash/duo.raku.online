---
title: Commenti su una sola linea
---

{% include menu.html %}

Il commento più semplice è il commento su una riga. Inizia con il carattere `#`. Arriva fino alla fine della riga.

```raku
my $name; # Questa variabile viene utilizzata per memorizzare il nome dell'utente
$name = prompt 'Qual è il tuo nome? ';
say $name; # Ora vediamo il nome
```

Uno shebang è una prima riga come `#!/usr/bin/env raku`. Per Raku, anche questo è un commento. Ma la shell lo può leggere ed eseguire.

{% include nav.html %}
