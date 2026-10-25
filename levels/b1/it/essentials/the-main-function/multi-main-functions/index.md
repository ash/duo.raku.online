---
title: Più funzioni `MAIN`
---

{% include menu.html %}

Come qualsiasi altra funzione in Raku, la funzione `MAIN` può avere varianti `multi`. Con queste, il programma può reagire a ogni caso in modo specifico. I casi possono essere diversi per il numero dei parametri di input o per i loro tipi.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Se c'è un solo argomento, questo programma lo raddoppia. Se c'è un secondo argomento, il programma somma i due argomenti:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
