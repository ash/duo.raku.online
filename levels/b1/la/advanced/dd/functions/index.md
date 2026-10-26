---
title: Signaturas functionum dumping
translations_gpt:
---

{% include menu.html %}

`dd` nudum, sine argumentis, intra subroutinam vocare potes. Tum signaturam illius subroutinae imprimit. Signatura nomen eius et indicem parametrorum continet, si quos habet. Inspice exemplum sequens cum duabus subroutinis:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

Programma signaturas imprimit, non valores:

```console
sub f1()
sub f2($x)
```

Hoc praecipue utile est cum multi-functionibus, quia ostendit quam variantem programma revera vocaverit:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Quaque vice output variantem congruentem ostendit:

```console
sub g()
sub g($x)
```

{% include nav.html %}
