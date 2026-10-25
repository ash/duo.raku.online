---
title: Vidita antaŭe?
---

{% include menu.html %}

## Problemo

Skribu programon kun buklo, kiu faras la jenon:

1. Petu la uzanton enigi vorton.
2. Se la programo jam vidis la vorton unufoje, presu `Seen!`.
3. Se ĝi vidis la vorton pli ol unufoje, presu `Seen 2 times!` kaj tiel plu.
3. Ripetu la buklon.

## Ekzemplo

Jen kiel laboro kun la programo povas aspekti:

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
