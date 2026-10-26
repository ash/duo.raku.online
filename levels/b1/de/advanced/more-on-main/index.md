---
title: Mehr zu MAIN-Unterprogrammen
translations_gpt:
---

{% include menu.html %}

Im Essentials-Teil haben Sie `MAIN` benutzt, [um Kommandozeilenargumente zu bekommen](/de/essentials/the-main-function/reading-command-line-arguments). Aber Raku macht mit `MAIN` mehr für Sie, als nur die Werte weiterzugeben.

## Die Verwendungsmeldung

Manchmal passen die Argumente auf der Kommandozeile nicht zur Signatur von `MAIN`. In diesem Fall führt Raku den Körper nicht aus. Stattdessen gibt Raku eine _Verwendungsmeldung_ aus, die Raku automatisch erstellt. Die Meldung erklärt, wie man das Programm aufruft.

Werfen Sie einen Blick auf dieses Programm:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Wenn Sie es richtig aufrufen, begrüßt es die Person:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Wenn Sie es ohne Argument aufrufen, passt die Signatur nicht. Also gibt Raku die Verwendungsmeldung statt der Begrüßung aus:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku baut die Meldung aus den Namen der Parameter. Geben Sie ihnen also klare Namen, dann bekommen Sie ganz umsonst einen nützlichen Hilfetext.

## Benannte Argumente

Die Parameter von `MAIN` können sowohl positional als auch benannt sein. Ein benannter Parameter wird zu einer Option auf der Kommandozeile, wie `--option=wert`. Wenn er einen Standardwert hat, ist die Option nicht nötig:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
