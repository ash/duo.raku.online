---
title: Quoting-Adverbien
---

{% include menu.html %}

Du kannst ändern, wie ein Quoting-Konstrukt arbeitet. Dafür benutzt du _Adverbien_. Ein Quoting-Konstrukt hat mehrere Funktionen. Zum Beispiel kann es Skalare interpolieren. Es kann Code in geschweiften Klammern ausführen. Es kann Backslashes verarbeiten. Jede Funktion hat ihr eigenes Adverb. Das Adverb schaltet genau diese Funktion ein oder aus. So kannst du mit `q` oder `Q` beginnen. Dann fügst du genau die Funktionen wieder hinzu, die du brauchst.

Hier sind einige häufige Adverbien:

* `:s` / `:scalar` — setzt die Werte von skalaren Variablen (`$x`) in den String ein
* `:c` / `:closure` — führt den Code in `{ … }` aus und setzt das Ergebnis in den String ein
* `:b` / `:backslash` — verarbeitet Backslash-Escape-Sequenzen wie `\n`

Füge zu `q` ein Adverb hinzu. Dann bekommt `q` eine Funktion. Lass es zum Beispiel Code ausführen, aber sonst nichts:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Mit einfachem `q` gibt Raku `{ 3 * 4 }` genau so aus, wie es ist. Nur `:c` führt den Block aus. Dann setzt Raku das Ergebnis in den String ein. Eine `$variable` bleibt trotzdem, wie sie ist. Sieh dir die Trennzeichen hier an: `/…/`. Trennzeichen sind die Zeichen um den Text herum. Du kannst auch `{…}` als Trennzeichen benutzen. Das gibt keinen Fehler, weil der Compiler die Klammern richtig zählt. Aber dann ist das innere `{ 3 * 4 }` nur ein Teil des Textes. Es ist kein Code. Deshalb führt `:c` es nicht aus, und es bleibt, wie es ist. Hat der Text einen `{ … }`-Block? Dann benutze `{…}` nicht als Trennzeichen. Benutze andere Trennzeichen. Dann läuft der Code in den Klammern. Du kannst auch skalare Interpolation zu `Q` hinzufügen. Ohne sie lässt `Q` den ganzen Text, wie er ist:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Adverbien können Funktionen auch **ausschalten**. Schreib dafür ein `!`. Hier benutzen wir `qq`, aber `$` bleibt ein normales Zeichen:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` ist dasselbe wie `Q` mit allen eingeschalteten Interpolations-Adverbien. `q` ist dasselbe wie `Q` mit weniger eingeschalteten Adverbien. Mit den Adverbien kannst du jede Funktion zwischen diesen zwei Enden wählen.

{% include nav.html %}
