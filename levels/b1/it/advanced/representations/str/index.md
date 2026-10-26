---
title: Il metodo `.Str`
---

{% include menu.html %}

Il metodo `.Str` restituisce la forma **stringa semplice** di un valore. Raku lo chiama ogni volta che usa un valore in *contesto stringa*. Succede in `print` e `put`, e con l'operatore `~`, che unisce le stringhe. Succede anche quando inserisci un valore in una stringa tra virgolette doppie.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Nota che l'array è tornato **senza le parentesi quadre**. I suoi elementi sono solo uniti da spazi. Questa è la differenza visibile rispetto a [`.gist`](../gist), che tiene le parentesi. Confrontali uno accanto all'altro:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Quando inserisci un array in una stringa, Raku usa `.Str`. Quindi l'array viene mostrato nella forma semplice:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
