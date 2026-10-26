---
title: Subprogrammata nidificata
translations_gpt:
---

{% include menu.html %}

Subroutinam _intra_ aliam subroutinam definire potes. Haec est subroutina inclusa. Ea est subroutina ordinaria. Sed eam solum intra subroutinam exteriorem videre et adhibere potes.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

Programma imprimit:

```
I am the inner subroutine
```

Hic `inner` intra `outer` creamus. Tum `outer` eam vocat. Hoc operatur. Nomen `inner` in toto corpore `outer` notum est.

Sed extra `outer` nomen `inner` non exsistit. Hoc programma non compilatur:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Interdum una sola subroutina routinam auxiliarem requirit. Tum inclusio utilis est. Pone auxiliarem intra illam subroutinam. Hoc ostendit auxiliarem privatam esse. Praeterea nullus alius codex eam per errorem vocare potest.

{% include nav.html %}
