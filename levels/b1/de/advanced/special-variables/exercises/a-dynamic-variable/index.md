---
title: Eine dynamische Variable
---

{% include menu.html %}

## Aufgabe

Eine dynamische Variable schreibt man mit dem Twigil `*`. Raku findet sie, indem es nach außen durch den Aufrufstapel sucht, nicht über den lexikalischen Geltungsbereich. Also hängt der Wert, den eine Subroutine sieht, davon ab, wer sie aufgerufen hat. So kann ein Block den Code, den er aufruft, mit einer anderen Identität ausführen.

1. Deklariere eine dynamische Variable `$*user` mit dem Wert `'guest'`.
2. Schreibe eine Subroutine `whoami`, die `running as ` und dann den aktuellen `$*user` ausgibt (zum Beispiel `running as guest`). Sie hat keine Parameter, also muss sie `$*user` direkt lesen.
3. Rufe `whoami` einmal auf der obersten Ebene auf. Sie zeigt `guest`.
4. Mach dann einen Block, der `$*user` noch einmal als `'admin'` deklariert. Rufe darin *dieselbe* `whoami` noch einmal auf. Jetzt zeigt sie `admin`.

## Beispiel

Das Programm gibt aus:

```
running as guest
running as admin
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
