---
title: De `MAIN` functie
---

{% include menu.html %}

Een Raku-programma heeft geen standaardcode nodig die je altijd moet schrijven. Je kunt dus meteen beginnen met het schrijven van nuttige instructies. Dit deel van het programma staat buiten alle [codeblokken](/nl/essentials/code-blocks), bijvoorbeeld ook buiten [functies](/nl/essentials/functions). Het heet de _mainline_.

Als een programma een functie met de speciale naam `MAIN` heeft, voert Raku die als laatste uit. Dat gebeurt nadat Raku alles heeft gecompileerd en de mainline-code heeft uitgevoerd.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Dit programma voert eerst de `say`s op het hoogste niveau uit en roept daarna `MAIN` aan:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Natuurlijk kan een programma ook de `MAIN`-functie hebben en geen andere mainline-code.

{% include nav.html %}
