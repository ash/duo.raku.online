---
title: Die `MAIN`-Funktion
---

{% include menu.html %}

Ein Raku-Programm braucht keinen besonderen Code am Anfang. Sie können also sofort mit nützlichem Code beginnen. Dieser Code steht in keinem [Codeblock](/de/essentials/code-blocks). Er steht zum Beispiel nicht in einer [Funktion](/de/essentials/functions). Wir nennen diesen Teil des Programms _mainline_.

Ein Programm kann eine Funktion mit dem speziellen Namen `MAIN` haben. In diesem Fall kompiliert Raku zuerst alles. Dann führt Raku den mainline-Code aus. Danach führt Raku die Funktion `MAIN` aus.

```raku
say '1. Mainline-Code';

sub MAIN {
    say '3. MAIN aufgerufen';
}

say '2. Auch mainline';
```

Zuerst führt dieses Programm die `say`s auf der obersten Ebene aus. Dann ruft es `MAIN` auf:

```console
$ raku t.raku
1. Mainline-Code
2. Auch mainline
3. MAIN aufgerufen
```

Natürlich kann ein Programm auch nur die Funktion `MAIN` haben. Dann hat es keinen anderen mainline-Code.

{% include nav.html %}
