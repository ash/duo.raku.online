---
title: Dump della struttura dati
translations_gpt:
---

{% include menu.html %}

## Problema

Ecco una struttura dati annidata. Ha dei dati dentro altri dati:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Fai due cose con essa:

1. Fai il dump di `@data` con `dd`, in una forma per i programmatori.
2. Stampa la stessa forma come stringa. Metti davanti il testo `Structure: `.

## Esempio

Il programma stampa due righe. Sono molto simili:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
