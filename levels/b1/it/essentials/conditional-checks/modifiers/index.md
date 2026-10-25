---
title: '`if` e `unless` come modificatori di istruzioni'
---

{% include menu.html %}

A volte vuoi che un'istruzione semplice venga eseguita solo a una certa condizione. Per questo, Raku ha una soluzione molto pratica. Non serve creare un blocco di codice separato. Basta mettere `if` o `unless` subito dopo l'istruzione. In Raku, questi costrutti si chiamano _modificatori di istruzione_.

```raku
say 'Buon pomeriggio' if $hours > 12;

say 'Tutti i sistemi funzionano' unless $broken;
```

{% include nav.html %}
