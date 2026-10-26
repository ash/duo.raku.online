---
title: 'Solution: Una sezione Pod'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `$=pod` contiene il Pod del file come una lista di blocchi. `$=pod[0]` è l'unico blocco `=begin pod`.

1. I suoi `.contents` sono i blocchi al suo interno, cioè l'intestazione `=head1` e il paragrafo. Quindi `.contents.elems` è `2`. Navigando così nella struttura, un programma legge la propria documentazione come dati.

{% include nav.html %}
