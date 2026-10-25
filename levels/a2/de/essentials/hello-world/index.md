---
title: Hallo, Welt!
---

{% include menu.html %}

Toll! Jetzt kennen wir die Grundlagen. Wir können mit Raku sprechen und seine Antwort sehen. Gehen wir also zum ersten echten Programm: ‚Hallo, Welt!‘.

```raku
say 'Hallo, Welt!';
```

Bald lernen wir die Grundlagen von Funktionen. Aber hier sind zuerst ein paar andere Wege, dieses Programm zu schreiben.

Erstens können Sie das Funktionsargument in Klammern setzen:

```raku
say('Hallo, Welt!');
```

Zweitens können Sie andere Funktionen benutzen: `put` und `print`. Auch hier können Sie sie mit oder ohne Klammern schreiben:

```raku
put 'Hallo, Welt!';

print("Hallo, Welt!\n");
```

Bei `print` müssen Sie das Newline-Zeichen selbst hinzufügen. Dieses Zeichen beginnt eine neue Zeile. Setzen Sie es an das Ende der Nachricht. Aber keine Sorge. Wir sehen uns all diese Details später an.

Bevor wir weitermachen, zeige ich Ihnen noch einen spannenden Weg. Sie können die Funktion als Methode aufrufen. Rufen Sie sie direkt auf dem String auf:

```raku
'Hallo, Welt!'.say;
```

{% include nav.html %}
