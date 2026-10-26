---
title: Die `.raku`-Methode
---

{% include menu.html %}

Die dritte Methode ist `.raku`. Sie gibt einen String mit einer **codeähnlichen** Form des Wertes zurück. Im besten Fall kannst du diesen String in ein Programm einfügen. Dann bekommst du wieder denselben Wert. Jeder Wert in Raku hat diese Methode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Sieh dir den String `'Raku'` an. Er kommt mit Anführungszeichen zurück. So sehen eine Zahl und ein String verschieden aus. Solche Details brauchst du, wenn du ein Programm debuggst.

Die Methode funktioniert auch für Daten mit vielen Teilen. Das gilt auch für verschachtelte Daten, mit einer Struktur in einer anderen:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` gibt einen normalen String zurück. Also kannst du ihn überall verwenden, wo ein String nötig ist. Zum Beispiel kannst du ihn in einen String in doppelten Anführungszeichen setzen:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Verwende `.raku`, wenn du diese Form als String brauchst. Dann kannst du sie in deine eigenen Nachrichten einfügen. Sehr bald lernst du `dd` kennen. Das ist ein Werkzeug in Rakudo. Es gibt dieselbe Art von Form für dich aus, in einem Schritt.

{% include nav.html %}
