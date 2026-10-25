---
title: Vidita antaŭe?
---

{% include menu.html %}

## Problemo

Skribu programon kun buklo. La buklo faras ĉi tiujn aferojn:

1. Petu vorton de la uzanto.
2. Se la uzanto enigis ĉi tiun vorton unufoje antaŭe, presu `Seen!`.
3. Se la uzanto enigis ĝin pli ol unufoje antaŭe, presu `Seen 2 times!`, kaj tiel plu.
3. Ripetu la buklon.

## Ekzemplo

Jen ekzemplo de uzado de la programo:

```console
$ raku seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

Por ĉesigi la programon, premu `Ctrl+C`.

## Solvo

✅ [Vidu la solvon](solvo)

{% include nav.html %}
