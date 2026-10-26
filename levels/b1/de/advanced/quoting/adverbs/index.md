---
title: Quoting-Adverbien
---

{% include menu.html %}

Du kannst das Verhalten eines Quoting-Konstrukts mit _Adverbien_ anpassen. Jede Quoting-Funktion hat ihr eigenes Adverb, das genau diese eine Funktion ein- oder ausschaltet. Die Funktionen sind: Skalare interpolieren, Closures ausführen (Code in geschweiften Klammern) und Backslashes verarbeiten. So kannst du mit `q` oder `Q` beginnen. Dann fügst du genau die Funktionen wieder hinzu, die du brauchst.

Einige gebräuchliche Adverbien:

* `:s` / `:scalar` — interpoliert skalare Variablen (`$x`)
* `:c` / `:closure` — interpoliert Code in `{ … }`
* `:b` / `:backslash` — verarbeitet Backslash-Escape-Sequenzen wie `\n`

Füge zu `q` ein Adverb hinzu, um eine einzelne Funktion einzuschalten. Erlaube zum Beispiel Code in geschweiften Klammern, aber sonst nichts:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Mit einfachem `q` wird `{ 3 * 4 }` genau so ausgegeben, wie es geschrieben ist. Erst `:c` lässt den Block laufen und fügt seinen Wert ein. Eine `$variable` würde aber trotzdem so bleiben, wie sie ist. Beachte hier die Trennzeichen `/…/`. Du könntest auch `{…}` als Trennzeichen benutzen, und der Code würde trotzdem kompilieren. Der Compiler zählt die verschachtelten Klammern richtig. Aber dann wäre das innere `{ 3 * 4 }` nur ein Teil des Textes, keine Closure. Also würde `:c` es so lassen, wie es ist. Wenn der Text also einen `{ … }`-Block enthält, wähle ein anderes Trennzeichen als `{…}`. Dann läuft die Closure wirklich. Du kannst auch skalare Interpolation zu `Q` hinzufügen, das normalerweise nichts verändert:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Mit einem `!` schalten Adverbien Funktionen auch **aus**. Hier siehst du, wie du `qq` benutzt, aber `$` so lässt, wie es ist:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` ist dasselbe wie `Q` mit allen eingeschalteten Interpolations-Adverbien. `q` ist dasselbe wie `Q` mit einer kleineren Auswahl davon. Zwischen diesen zwei Enden kannst du mit den Adverbien jedes Detail steuern.

{% include nav.html %}
