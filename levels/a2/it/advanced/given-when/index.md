---
title: '`given` e `when`'
translations_gpt:
---

{% include menu.html %}

A volte un programma deve scegliere tra diverse opzioni. Una catena di controlli `if` e `elsif` può diventare lunga. Ripete anche le stesse cose. In questo caso, `given`/`when` è spesso più chiaro. È come l'istruzione `switch` di altri linguaggi.

Il blocco `given` prende un valore. Fa di questo valore il _topic_. Il topic è la variabile speciale `$_`. Poi Raku confronta ogni blocco `when` con il topic. Parte il primo `when` che corrisponde:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Questo programma stampa:

```
two
```

Alcuni altri linguaggi hanno un'istruzione `switch`. Dopo una corrispondenza, può passare al caso successivo. Raku non lo fa. Quando un `when` corrisponde, parte il suo blocco. Poi il blocco `given` finisce. Raku non prova gli altri blocchi `when`.

## Il blocco `default`

Un blocco `default` parte quando nessun blocco `when` corrisponde. Funziona come la parte `else` di un'istruzione `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` non è `1` e non è `2`. Così il programma stampa:

```
many
```

{% include nav.html %}
