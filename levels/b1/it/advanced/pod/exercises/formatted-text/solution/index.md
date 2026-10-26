---
title: 'Solution: Testo formattato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Il codice sorgente si trova nel file [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Output

Esegui con `raku --doc`:

```
Greeting

Hello, world!
```

## Commenti

1. `B<world>` segna la parola in grassetto. Quando viene renderizzata come testo semplice, sembra testo normale. Ma i formati più ricchi la mostrano in grassetto.

1. `raku --doc` renderizza il Pod, ma non esegue nessuna parte del codice del programma.

1. Per *vedere* davvero il testo in grassetto, renderizza il Pod in un formato che ha degli stili. Installa un formattatore, come `Pod::To::HTML`, con `zef install Pod::To::HTML`. Poi esegui `raku --doc=HTML formatted-text.raku`. Ora la parola esce dentro un elemento HTML `<b>`. L'output in testo semplice di `--doc` è diverso. Non può mostrare il grassetto quando va in un file o in una pipe.

{% include nav.html %}
