---
title: Das `@*ARGS`-Array
---

{% include menu.html %}

Da Sie jetzt Arrays kennen, lernen wir eines der eingebauten Arrays kennen: `@*ARGS`. Das `*` in seinem Namen ist ein zweites Sigil oder _Twigil_. Wir werden später mehr davon sehen. Aber jetzt sehen wir uns an, warum dieses spezielle Array nützlich ist. Es enthält die Argumente, die das Programm von der Kommandozeile bekommt.

Sehen wir uns den folgenden Programmlauf an:

```console
$ raku run.raku alpha beta
```

Das Programm `run.raku` bekommt zwei Parameter, `alpha` und `beta`. Im Programm können Sie sie aus `@*ARGS` lesen.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Dieses Programm gibt aus, wie viele Argumente es bekommen hat, und dann die Argumente selbst:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Beachten Sie, dass das Programm keine Änderung braucht, wenn Sie es als ausführbare Datei starten:

```console
$ ./run.raku alpha beta
```

In diesem Fall sollte das Programm [einen Shebang haben](/de/essentials/running-programs/from-command-line). Aber das Wichtigste ist, dass die Indizes von `@*ARGS` immer noch bei `0` beginnen:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
