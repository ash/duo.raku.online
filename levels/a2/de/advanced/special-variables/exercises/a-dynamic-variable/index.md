---
title: Eine dynamische Variable
---

{% include menu.html %}

## Aufgabe

Eine dynamische Variable hat das Twigil `*`. Raku sucht sie durch den Aufrufstapel, nicht über den lexikalischen Geltungsbereich. Also kann eine Subroutine verschiedene Werte sehen. Der Wert hängt davon ab, wer die Subroutine aufruft. Damit kann ein Block den Code, den er aufruft, als jemand anderes laufen lassen.

1. Deklariere eine dynamische Variable `$*user` mit dem Wert `'guest'`.
2. Schreibe eine Subroutine `whoami`. Sie gibt `running as ` und dann den aktuellen `$*user` aus, zum Beispiel `running as guest`. Sie hat keine Parameter. Sie muss `$*user` direkt lesen.
3. Rufe `whoami` einmal auf der obersten Ebene auf. Sie zeigt `guest`.
4. Mach dann einen Block. Deklariere darin `$*user` noch einmal als `'admin'`. Rufe dort *dieselbe* `whoami` auf. Jetzt zeigt sie `admin`.

## Beispiel

Das Programm gibt aus:

```
running as guest
running as admin
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
