---
title: '`given` e `when`'
translations_gpt:
---

{% include menu.html %}

A volte un programma deve scegliere tra diverse opzioni. Una catena di controlli `if` e `elsif` può allora diventare lunga e piena di ripetizioni. In questi casi, `given`/`when` è spesso più chiaro. È simile all'istruzione `switch` di altri linguaggi.

Il blocco `given` prende un valore e lo rende il _topic_. Il topic è la variabile speciale `$_`. Poi ogni blocco `when` viene confrontato con questo topic. Viene eseguito il primo che corrisponde:

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

A differenza dello `switch` di alcuni linguaggi, non c'è fall-through al caso successivo. Appena un `when` corrisponde, il suo blocco viene eseguito e il blocco `given` è finito. Gli altri blocchi `when` non vengono provati.

## Il blocco `default`

Un blocco `default` viene eseguito quando nessuno dei blocchi `when` ha trovato corrispondenza. Fa lo stesso lavoro del ramo `else` di un'istruzione `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` non è né `1` né `2`, quindi il programma stampa:

```
many
```

{% include nav.html %}
