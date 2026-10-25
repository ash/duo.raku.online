---
title: '`if` e `unless` come modificatori di istruzioni'
---

{% include menu.html %}

A volte un'istruzione semplice dipende da una condizione. Raku ha un modo molto facile per scriverlo. Non ti serve un blocco di codice separato. Basta mettere `if` o `unless` subito dopo l'istruzione. In Raku, queste forme si chiamano _modificatori di istruzione_.

```raku
say 'Buon pomeriggio' if $hours > 12;

say 'Tutti i sistemi funzionano' unless $broken;
```

{% include nav.html %}
