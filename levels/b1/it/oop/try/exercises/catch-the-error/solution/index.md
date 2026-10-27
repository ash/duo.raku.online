---
title: "Soluzione: Intercettate l'errore"
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Trova il programma nel file [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Output

```
42
False
broken
```

## Commenti

1. Quando il blocco gira senza errori, `try` dà semplicemente il valore del blocco. Quindi `$ok` contiene `42`.

1. Il `die` nel secondo blocco solleva un'eccezione. Quindi quel blocco dà un valore non definito, e `$bad.defined` è `False`.

1. L'eccezione intercettata è conservata nella variabile speciale `$!`. `$!.message` restituisce il testo che le è stato dato, `broken`.

{% include nav.html %}
