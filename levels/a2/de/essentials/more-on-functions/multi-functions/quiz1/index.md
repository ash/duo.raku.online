---
title: Quiz 1 — Einfache Multi-Funktionen
---

{% include menu.html %}

Wie erstellt man eine Multi-Funktion? Welche Wege sind richtig?

## 1

```raku
sub func($a) {. . .}
sub func($a, $b) {. . .}
```

{:.quiz-select}
incorrect | Diese Definitionen sind&nbsp; (: korrekt, inkorrekt :) | Der `multi` Deklarator fehlt.

## 2

```raku
multi func($a) {. . .}
multi func($a, $b) {. . .}
```

{:.quiz-select}
correct | Diese Definitionen sind&nbsp; (: korrekt, inkorrekt :) | Der `sub` Deklarator fehlt, aber das ist akzeptabel.

## 3

```raku
multi sub func($a) {. . .}
multi sub func($a, $b) {. . .}
```

{:.quiz-select}
correct | Diese Definitionen sind&nbsp; (: korrekt, inkorrekt :) | Völlig perfekt.

## 4

```raku
sub multi func($a) {. . .}
sub multi func($a, $b) {. . .}
```

{:.quiz-select}
incorrect | Diese Definitionen sind&nbsp; (: korrekt, inkorrekt :) | Sollte `multi` `sub` sein, nicht `sub` `multi`.

## 5

```raku
multi sub func($a) {. . .}
multi sub func($b) {. . .}
```

{:.quiz-select}
incorrect | Diese Definitionen sind&nbsp; (: korrekt, inkorrekt :) | Die Signaturen können bei der Mehrfachverteilung nicht unterschieden werden.

{% include quiz.html %}

{% include nav.html %}
