---
title: Das Test-Modul
---

{% include menu.html %}

Du lädst die Testwerkzeuge mit `use Test`. Die einfachste Prüfung ist `ok`, die bestanden wird, wenn ihre Bedingung wahr ist. Jede Prüfung kann auch eine Beschreibung bekommen:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Wenn du es ausführst, gibt es Folgendes im Standard-Testformat namens _TAP_ aus:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Jede bestandene Prüfung wird als `ok` mit ihrer Nummer und Beschreibung angezeigt. Eine fehlgeschlagene Prüfung würde `not ok` zeigen. Die letzte Zeile, `1..2`, ist der _Plan_, der sagt, wie viele Tests gelaufen sind. Der Aufruf von `done-testing` am Ende gibt diesen Plan automatisch aus.

Wenn du einen bestimmten Wert erwartest, ist `is` klarer als `ok`. Wenn der Test fehlschlägt, zeigt `is` sowohl den erwarteten als auch den tatsächlichen Wert:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Das gibt `ok 1 - addition works` aus. Um zu sehen, wie `is` ein Problem meldet, gib ihm einen falschen erwarteten Wert:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Jetzt schlägt die Prüfung fehl, und die Ausgabe erklärt genau, was schiefgegangen ist:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Die Zeile `not ok` markiert den Fehlschlag. Die Zeilen darunter zeigen, was erwartet wurde und was das Programm wirklich bekommen hat. Wenn also ein bestimmter Wert wichtig ist, ist `is` hilfreicher als ein einfaches `ok`.

`ok`, `is` und `done-testing` reichen schon für eine nützliche Testdatei. Das nächste Thema fügt [die anderen Vergleichsarten](/de/advanced/testing/comparisons) hinzu.

{% include nav.html %}
