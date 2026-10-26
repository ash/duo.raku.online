---
title: Geneste subroutines
translations_gpt:
---

{% include menu.html %}

Een subroutine kan _binnen_ een andere subroutine worden gedefinieerd. Zo'n geneste subroutine is een normale subroutine. Maar ze is alleen zichtbaar binnen de subroutine die haar bevat.

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

Hier wordt `inner` binnen `outer` gedeclareerd, en `outer` roept haar aan. Dit werkt omdat je `inner` overal in het lichaam van `outer` kunt gebruiken.

Maar buiten `outer` is er geen naam `inner`. Daarom compileert het volgende programma niet:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Nesten is handig als maar één subroutine een hulproutine nodig heeft. Als je de hulproutine erin houdt, is duidelijk dat het een privédetail is. Ook kan niemand haar per ongeluk van ergens anders aanroepen.

{% include nav.html %}
