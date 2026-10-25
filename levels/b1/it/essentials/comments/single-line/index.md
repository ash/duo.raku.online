---
title: Commenti su una sola linea
---

{% include menu.html %}

Il tipo di commento più semplice è il commento su una riga. Inizia con il carattere `#`. Continua fino alla fine della riga corrente.

```raku
my $name; # Questa variabile viene utilizzata per memorizzare il nome dell'utente
$name = prompt 'Qual è il tuo nome? ';
say $name; # Ora vediamo il nome
```

Guarda uno shebang come `#!/usr/bin/env raku` nella prima riga di codice. Per Raku, anche questo è un commento. Ma la shell lo può leggere ed eseguire.

{% include nav.html %}
