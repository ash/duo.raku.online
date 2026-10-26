---
title: Das Test-Modul
---

{% include menu.html %}

Um die Werkzeuge für Tests zu bekommen, schreibe `use Test`. Die einfachste Prüfung ist `ok`. Sie ist erfolgreich, wenn ihre Bedingung wahr ist. Jede Prüfung kann auch eine Beschreibung haben:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Führe dieses Programm aus. Es gibt das Ergebnis im Standardformat für Tests aus. Dieses Format heißt _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Für jede erfolgreiche Prüfung siehst du `ok` mit ihrer Nummer und Beschreibung. Eine fehlgeschlagene Prüfung zeigt `not ok`. Die letzte Zeile, `1..2`, ist der _Plan_. Er sagt, wie viele Tests gelaufen sind. Der Aufruf von `done-testing` am Ende gibt diesen Plan automatisch aus.

Manchmal erwartest du einen bestimmten Wert. Dann ist `is` klarer als `ok`. Wenn der Test fehlschlägt, zeigt `is` zwei Werte. Es zeigt den Wert, den du erwartest, und den Wert, den du bekommst:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Das gibt `ok 1 - addition works` aus. Jetzt sehen wir, wie `is` einen Fehler meldet. Gib `is` einen falschen erwarteten Wert:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Jetzt schlägt die Prüfung fehl. Die Ausgabe zeigt genau, was falsch ist:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Die Zeile `not ok` zeigt den Fehler. Darunter erklären weitere Zeilen das Problem. Sie zeigen den Wert, den du erwartest, und den Wert, den du bekommst. Wenn du also einen bestimmten Wert brauchst, hilft `is` mehr als `ok` allein.

Mit `ok`, `is` und `done-testing` kannst du schon eine nützliche Testdatei schreiben. Das nächste Thema zeigt [die anderen Vergleiche](/de/advanced/testing/comparisons).

{% include nav.html %}
