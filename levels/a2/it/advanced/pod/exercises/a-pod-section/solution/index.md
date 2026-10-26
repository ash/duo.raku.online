---
title: 'Solution: Una sezione Pod'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Il codice sorgente si trova nel file [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Output

```
2
```

## Commenti

1. `$=pod` contiene il Pod del file. È una lista di blocchi. `$=pod[0]` è l'unico blocco `=begin pod`.

1. I suoi `.contents` sono i blocchi al suo interno: l'intestazione `=head1` e il paragrafo. Quindi `.contents.elems` è `2`. Un programma può entrare nella struttura in questo modo. Così legge la propria documentazione come dati.

{% include nav.html %}
