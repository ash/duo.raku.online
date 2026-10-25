---
title: Più funzioni `MAIN`
---

{% include menu.html %}

Come ogni altra funzione in Raku, `MAIN` può avere varianti `multi`. Così il programma può reagire in modi diversi a input diversi. L'input può avere un numero diverso di parametri. Oppure i parametri possono avere tipi diversi.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Con un argomento, questo programma lo raddoppia. Con due argomenti, li somma:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
