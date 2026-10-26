---
title: Verschachtelte Unterprogramme
translations_gpt:
---

{% include menu.html %}

Eine Unterroutine kann _innerhalb_ einer anderen Unterroutine definiert werden. So eine verschachtelte Unterroutine ist eine normale Unterroutine. Aber sie ist nur innerhalb der Unterroutine sichtbar, die sie enthält.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

Das Programm gibt aus:

```
I am the inner subroutine
```

Hier wird `inner` innerhalb von `outer` deklariert, und `outer` ruft sie auf. Das funktioniert, weil Sie `inner` überall im Körper von `outer` benutzen können.

Aber außerhalb von `outer` gibt es keinen Namen `inner`. Deshalb lässt sich das nächste Programm nicht kompilieren:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Verschachtelung ist nützlich, wenn nur eine Unterroutine eine Hilfsroutine braucht. Wenn Sie den Helfer darin lassen, ist klar, dass er ein privates Detail ist. Außerdem kann ihn niemand aus Versehen von woanders aufrufen.

{% include nav.html %}
