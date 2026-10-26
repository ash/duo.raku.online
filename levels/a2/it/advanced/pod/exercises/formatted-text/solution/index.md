---
title: 'Solution: Testo formattato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Il codice sorgente si trova nel file [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Output

Eseguilo con `raku --doc`:

```
Greeting

Hello, world!
```

## Commenti

1. `B<world>` mette la parola in grassetto. Nel testo semplice sembra testo normale. Ma i formati più ricchi la mostrano in grassetto.

1. `raku --doc` mostra il Pod come testo. Non esegue nessun codice del programma.

1. Vuoi *vedere* davvero il grassetto? Allora trasforma il Pod in un formato con stili. Prima installa un modulo di formattazione, per esempio `Pod::To::HTML`. Per questo usa `zef install Pod::To::HTML`. Poi esegui `raku --doc=HTML formatted-text.raku`. Ora la parola è dentro un elemento HTML `<b>`. Il testo semplice di `--doc` è diverso. Non può mostrare il grassetto in un file o in una pipe.

{% include nav.html %}
