---
title: Lazy und unendliche Sequenzen
---

{% include menu.html %}

Eine Sequenz muss nicht alle ihre Werte auf einmal berechnen. Raku-Sequenzen sind _lazy_: Jeder Wert wird erst erzeugt, wenn er wirklich gebraucht wird. So kannst du eine Sequenz beschreiben, die überhaupt kein Ende hat.

Um eine unendliche Sequenz zu schreiben, benutze `Inf` als Endpunkt. Der Operator `...` bindet schwächer als `=`, also würde Raku zuerst das `=` ausführen. Deshalb setzt du die Sequenz in Klammern:

```raku
my $naturals = (1 ... Inf);
```

Ohne die Klammern würde `my $naturals = 1 ... Inf` der Variablen nur `1` zuweisen. Dann würde Raku die Sequenz getrennt davon bauen. Eine endlose Sequenz zu berechnen, die niemand benutzt, würde das Programm hängen lassen.

An dieser Stelle wird noch nichts berechnet. Die Sequenz gibt Werte nur heraus, wenn du danach fragst. Die Methode `head` nimmt die ersten paar davon:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Die Sequenz ist unendlich, aber nur die ersten fünf Zahlen werden erzeugt. Ohne Laziness würde das Programm versuchen, die ganze endlose Sequenz zu bauen. So ein Programm würde nie fertig werden.

Wenn eine Sequenz endlich ist, kann die Methode `tail` stattdessen Werte von ihrem Ende nehmen:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Mit Laziness kannst du zwei Dinge trennen. Das erste ist die _Beschreibung_ einer Sequenz. Das zweite ist die Entscheidung, wie viel davon du benutzt.

{% include nav.html %}
