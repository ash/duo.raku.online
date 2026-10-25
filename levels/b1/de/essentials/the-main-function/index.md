---
title: Die `MAIN`-Funktion
---

{% include menu.html %}

Ein Raku-Programm braucht keinen Standardcode, den Sie immer schreiben müssen. Sie können also sofort nützliche Anweisungen schreiben. Dieser Teil des Programms liegt außerhalb aller [Codeblöcke](/de/essentials/code-blocks), zum Beispiel auch außerhalb von [Funktionen](/de/essentials/functions). Er heißt _mainline_.

Wenn ein Programm eine Funktion mit dem speziellen Namen `MAIN` hat, führt Raku sie zuletzt aus. Das passiert, nachdem Raku alles kompiliert und den mainline-Code ausgeführt hat.

```raku
say '1. Mainline-Code';

sub MAIN {
    say '3. MAIN aufgerufen';
}

say '2. Auch mainline';
```

Dieses Programm führt zuerst die `say`s auf der obersten Ebene aus und ruft dann `MAIN` auf:

```console
$ raku t.raku
1. Mainline-Code
2. Auch mainline
3. MAIN aufgerufen
```

Natürlich kann ein Programm auch die Funktion `MAIN` und keinen anderen mainline-Code haben.

{% include nav.html %}
