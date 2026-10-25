---
title: Das `@*ARGS`-Array
---

{% include menu.html %}

Jetzt kennen Sie Arrays. Lernen wir also ein eingebautes Array kennen: `@*ARGS`. Sehen Sie sich das `*` in seinem Namen an. Es ist ein zweites Sigil oder _Twigil_. Weitere Twigils sehen wir später. Aber jetzt sehen wir, wie nützlich dieses spezielle Array ist. Es enthält die Argumente des Programms. Das Programm bekommt sie von der Kommandozeile.

Sehen wir uns diesen Programmlauf an:

```console
$ raku run.raku alpha beta
```

Das Programm `run.raku` bekommt zwei Parameter: `alpha` und `beta`. Sie können sie aus `@*ARGS` lesen.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Dieses Programm gibt die Anzahl seiner Argumente aus. Dann gibt es die Argumente aus:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Sie können das Programm auch als ausführbare Datei starten. Dafür müssen Sie das Programm nicht ändern:

```console
$ ./run.raku alpha beta
```

In diesem Fall [braucht das Programm einen Shebang](/de/essentials/running-programs/from-command-line). Aber das Wichtigste ist Folgendes. Die Indizes von `@*ARGS` beginnen immer noch bei `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
