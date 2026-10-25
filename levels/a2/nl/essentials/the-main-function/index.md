---
title: De `MAIN` functie
---

{% include menu.html %}

Een Raku-programma heeft aan het begin geen speciale code nodig. Je kunt dus meteen met nuttige code beginnen. Deze code staat niet in een [codeblok](/nl/essentials/code-blocks). Hij staat bijvoorbeeld niet in een [functie](/nl/essentials/functions). We noemen dit deel van het programma de _mainline_.

Een programma kan een functie met de speciale naam `MAIN` hebben. In dat geval compileert Raku eerst alles. Daarna voert het de mainline-code uit. Als laatste voert het de `MAIN`-functie uit.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Eerst voert dit programma de `say`s op het hoogste niveau uit. Dan roept het `MAIN` aan:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Natuurlijk kan een programma ook alleen de `MAIN`-functie hebben. Dan heeft het geen andere mainline-code.

{% include nav.html %}
