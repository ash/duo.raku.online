---
title: Mehr zu MAIN-Unterprogrammen
translations_gpt:
---

{% include menu.html %}

Im Essentials-Teil haben Sie mit `MAIN` [Kommandozeilenargumente bekommen](/de/essentials/the-main-function/reading-command-line-arguments). Raku macht mit `MAIN` noch mehr für Sie. Es gibt nicht nur die Werte weiter.

## Die Verwendungsmeldung

Manchmal passen die Argumente auf der Kommandozeile nicht zur Signatur von `MAIN`. Die Signatur ist die Liste seiner Parameter. Dann führt Raku den Körper nicht aus. Raku gibt stattdessen eine _Verwendungsmeldung_ aus. Diese Meldung erstellt Raku selbst. Die Meldung zeigt, wie Sie das Programm starten.

Sehen Sie sich dieses Programm an:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Starten Sie es richtig. Dann begrüßt es die Person:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Starten Sie es jetzt ohne Argument. Die Signatur passt nicht. Also gibt Raku die Verwendungsmeldung aus. Raku begrüßt die Person nicht:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku baut die Meldung aus den Namen der Parameter. Geben Sie den Parametern also gute Namen. Dann ist der Hilfetext nützlich, und Sie haben keine zusätzliche Arbeit.

## Benannte Argumente

`MAIN` kann positionale Parameter haben. `MAIN` kann auch benannte Parameter haben. Auf der Kommandozeile wird ein benannter Parameter zu einer Option wie `--option=wert`. Sie können ihm einen Standardwert geben. Dann ist die Option nicht nötig:

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
