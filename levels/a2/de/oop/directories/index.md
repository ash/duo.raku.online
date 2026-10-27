---
title: Mit Verzeichnissen arbeiten
translations_gpt:
---

{% include menu.html %}

Manchmal müssen Sie mit dem Dateisystem selbst arbeiten. Das Dateisystem enthält alle Dateien und Verzeichnisse auf der Festplatte. Zum Beispiel prüfen Sie, was da ist, oder Sie legen Verzeichnisse an. Ein Verzeichnis ist ein Ordner. Es kann Dateien und andere Verzeichnisse enthalten. Für diese Arbeit verwendet Raku _Pfadobjekte_. Ein Pfad zeigt, wo eine Datei oder ein Verzeichnis ist. Die Methode `.IO` macht aus jeder Zeichenkette ein Pfadobjekt. Dann beantwortet das Pfadobjekt Fragen zu diesem Pfad.

Zwei Fragen sind am häufigsten. Existiert der Pfad? Und was für ein Ding ist er?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` prüft, ob der Pfad existiert. `.f` prüft, ob er eine gewöhnliche Datei ist. `.d` prüft, ob er ein Verzeichnis ist.

`mkdir` legt ein neues Verzeichnis an:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Das nächste Thema zeigt, wie man auflistet, was in einem Verzeichnis ist.

{% include nav.html %}
