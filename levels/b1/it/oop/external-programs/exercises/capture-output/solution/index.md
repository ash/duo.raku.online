---
title: "Soluzione: Catturate l'output"
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Trova il programma nel file [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Output

```
3
```

## Commenti

1. `:out` manda l'output del programma dentro il `Proc` invece che sullo schermo. `.out.slurp(:close)` lo rilegge tutto. `.trim` toglie il ritorno a capo che `echo` aggiunge alla fine.

1. Ora l'output è una normale stringa nel nostro programma. La trattiamo come qualsiasi altro dato. `.words.elems` la divide dove ci sono spazi e conta i pezzi, il che dà `3`. È questo il senso di catturare l'output. Il programma esterno diventa un mattoncino, e noi lavoriamo ancora sul suo risultato.

{% include nav.html %}
