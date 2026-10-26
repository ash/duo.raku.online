---
title: Subprogrammata nidificata
translations_gpt:
---

{% include menu.html %}

Subroutina _intra_ aliam subroutinam definiri potest. Talis subroutina inclusa est subroutina ordinaria. Sed solum intra subroutinam quae eam continet visibilis est.

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

Hic `inner` intra `outer` declaratur, et `outer` eam vocat. Hoc operatur, quia `inner` ubique in corpore `outer` adhibere potes.

Sed extra `outer` nullum nomen `inner` est. Itaque programma sequens non compilatur:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Inclusio utilis est cum una sola subroutina routinam auxiliarem requirit. Si auxiliarem intus servas, clarum est eam rem privatam esse. Praeterea nemo eam aliunde per errorem vocare potest.

{% include nav.html %}
