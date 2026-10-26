---
title: Verschachtelte Unterprogramme
translations_gpt:
---

{% include menu.html %}

Sie können eine Unterroutine _in_ einer anderen Unterroutine definieren. Das ist eine verschachtelte Unterroutine. Sie ist eine normale Unterroutine. Aber Sie können sie nur in der äußeren Unterroutine sehen und benutzen.

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

Hier erstellen wir `inner` in `outer`. Dann ruft `outer` sie auf. Das funktioniert. Der Name `inner` ist im ganzen Körper von `outer` bekannt.

Aber außerhalb von `outer` gibt es den Namen `inner` nicht. Dieses Programm kompiliert nicht:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Manchmal braucht nur eine Unterroutine eine Hilfsroutine. Dann ist Verschachtelung nützlich. Setzen Sie den Helfer in diese Unterroutine. Das zeigt, dass der Helfer privat ist. Außerdem kann kein anderer Code ihn aus Versehen aufrufen.

{% include nav.html %}
