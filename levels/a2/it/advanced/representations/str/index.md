---
title: Il metodo `.Str`
---

{% include menu.html %}

Il metodo `.Str` restituisce la forma **stringa semplice** di un valore. Raku lo chiama quando gli serve un valore come stringa. Questo si chiama *contesto stringa*. `print` e `put` lo chiamano. Anche l'operatore `~` lo chiama. Questo operatore unisce le stringhe. Vale anche per i valori dentro le stringhe tra virgolette doppie.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Nota che l'array torna **senza le parentesi quadre**. Tra i suoi elementi ci sono solo spazi. Qui vedi la differenza da [`.gist`](../gist). Il metodo `.gist` tiene le parentesi. Confronta i due metodi uno accanto all'altro:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Un valore dentro una stringa tra virgolette doppie usa `.Str`. Così un array dentro una stringa appare nella forma semplice:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
