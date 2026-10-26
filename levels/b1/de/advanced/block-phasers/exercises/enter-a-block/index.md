---
title: Einen Block betreten
---

{% include menu.html %}

## Problem

`FIRST` läuft nur einmal, aber ein `ENTER`-Phaser läuft *jedes Mal*, wenn der Block betreten wird. Und eine Schleife betritt ihren Rumpf bei jedem Durchlauf neu.

Schreibe eine Schleife über `1..2`. Setze in die Schleife einen `ENTER`-Phaser, der `--entering` ausgibt. Füge auch eine normale Anweisung hinzu, die `body` mit der aktuellen Zahl ausgibt. Beachte, dass `--entering` bei jedem Durchlauf der Schleife einmal erscheint.

## Beispiel

Das Programm gibt aus:

```
--entering
body 1
--entering
body 2
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
