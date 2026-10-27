---
title: Ausnahmen mit `try` fangen
translations_gpt:
---

{% include menu.html %}

Wenn in einem Raku-Programm etwas schiefgeht, wird eine _Ausnahme_ geworfen. Das passiert zum Beispiel, wenn eine Datei fehlt oder wenn Sie selbst `die` aufrufen. Standardmäßig hält eine Ausnahme, die niemand behandelt, das Programm an. Mit dem `try`-Block können Sie Code ausführen, der fehlschlagen könnte, ohne dass das Programm abstürzt.

Sie schreiben den riskanten Code in einen `try`-Block. Wenn darin eine Ausnahme geworfen wird, endet der Block an dieser Stelle. Aber das Programm läuft weiter:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

Das `try` fängt das `die`, also stürzt das Programm nicht ab. Es geht direkt zur nächsten Anweisung weiter und gibt aus:

```
Still works
```

Wenn der Block so fehlschlägt, ergibt er einen undefinierten Wert. Also ist `$result` undefiniert:

```raku
say $result.defined; # False
```

Die gefangene Ausnahme wird in der besonderen Variablen `$!` gespeichert. Dort können Sie ihre Meldung lesen:

```raku
say $!.message; # Boom!
```

`try` macht aus einem fatalen Fehler also etwas, das Ihr Programm prüfen und worauf es reagieren kann. Wenn der Block ohne Ausnahme läuft, enthält `$result` seinen Wert, und `$!` ist undefiniert.

{% include nav.html %}
