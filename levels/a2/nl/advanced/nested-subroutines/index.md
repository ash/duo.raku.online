---
title: Geneste subroutines
translations_gpt:
---

{% include menu.html %}

Je kunt een subroutine _binnen_ een andere subroutine definiëren. Dat is een geneste subroutine. Het is een normale subroutine. Maar je kunt haar alleen binnen de buitenste subroutine zien en gebruiken.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

Het programma drukt af:

```
I am the inner subroutine
```

Hier maken we `inner` binnen `outer`. Dan roept `outer` haar aan. Dit werkt. De naam `inner` is bekend in het hele lichaam van `outer`.

Maar buiten `outer` bestaat de naam `inner` niet. Dit programma compileert niet:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Soms heeft maar één subroutine een hulproutine nodig. Dan is nesten handig. Zet de hulproutine in die subroutine. Dat laat zien dat de hulproutine privé is. Ook kan geen andere code haar per ongeluk aanroepen.

{% include nav.html %}
