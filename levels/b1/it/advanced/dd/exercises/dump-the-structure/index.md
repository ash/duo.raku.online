---
title: Dump della struttura dati
translations_gpt:
---

{% include menu.html %}

## Problema

Hai la seguente struttura dati annidata:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Fai due cose con essa:

1. Usa `dd` per stampare un dump di `@data` per gli sviluppatori.
2. Stampa la stessa rappresentazione come stringa, che inizia con il testo `Structure: `.

## Esempio

Il programma stampa due righe simili:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
