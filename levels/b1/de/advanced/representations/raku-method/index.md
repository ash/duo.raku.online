---
title: Die `.raku`-Methode
---

{% include menu.html %}

Die dritte Darstellungsmethode ist `.raku`. Sie gibt einen String mit einer **codeähnlichen** Darstellung des Wertes zurück. Im Idealfall kannst du diesen String in ein Programm einfügen und bekommst denselben Wert zurück. Jeder Wert in Raku hat diese Methode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Beachte, dass der String `'Raku'` mit Anführungszeichen zurückkommt. So siehst du schnell den Unterschied zwischen einer Zahl und einem String. Genau so ein Detail brauchst du beim Debuggen.

Die Methode funktioniert auch für zusammengesetzte Daten, sogar für verschachtelte Strukturen:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Da `.raku` einen normalen String zurückgibt, kannst du ihn überall verwenden, wo ein String erwartet wird. Zum Beispiel kannst du ihn in einen String in doppelten Anführungszeichen setzen:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Verwende `.raku`, wenn du die codeähnliche Darstellung als String brauchst. Dann kannst du sie mit deinen eigenen Nachrichten kombinieren. Sehr bald stellen wir `dd` vor. Dieses Rakudo-Werkzeug gibt dieselbe Art von Darstellung in einem Schritt für dich aus.

{% include nav.html %}
