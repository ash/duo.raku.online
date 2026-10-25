---
title: Hallo, Welt!
---

{% include menu.html %}

Großartig, wir haben die Grundlagen gelernt. Jetzt können wir mit Raku sprechen und seine Antwort sehen. Gehen wir also direkt zum ersten echten Programm, ‚Hallo, Welt!‘.

```raku
say 'Hallo, Welt!';
```

Bald werden wir die Grundlagen der Funktionen lernen. Aber zuerst sehen wir uns ein paar verschiedene Möglichkeiten für dieses Programm an.

Zunächst einmal können Sie das Funktionsargument in Klammern setzen:

```raku
say('Hallo, Welt!');
```

Zweitens können Sie zwei andere Funktionen verwenden, `put` und `print`. Auch hier können Sie sie mit oder ohne Klammern schreiben:

```raku
put 'Hallo, Welt!';

print("Hallo, Welt!\n");
```

Beachten Sie, dass Sie bei `print` das Newline-Zeichen selbst hinzufügen müssen. Es gehört an das Ende der Nachricht. Aber keine Sorge, wir behandeln all diese Details später.

Bevor wir weitermachen, zeige ich Ihnen noch eine spannende Möglichkeit. Sie können eine Funktion als Methode aufrufen, direkt auf dem String:

```raku
'Hallo, Welt!'.say;
```

{% include nav.html %}
