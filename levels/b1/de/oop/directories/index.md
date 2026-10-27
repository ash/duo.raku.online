---
title: Mit Verzeichnissen arbeiten
translations_gpt:
---

{% include menu.html %}

Manchmal müssen Sie mit dem Dateisystem selbst arbeiten. Zum Beispiel möchten Sie prüfen, was da ist, oder Verzeichnisse anlegen. Dafür verwendet Raku _Pfadobjekte_. Mit der Methode `.IO` können Sie jede Zeichenkette in ein Pfadobjekt verwandeln. Das Pfadobjekt beantwortet dann Fragen zu diesem Pfad.

Am häufigsten fragen Sie, ob ein Pfad existiert und was für ein Ding er ist:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` prüft, ob der Pfad existiert. `.f` prüft auf eine gewöhnliche Datei und `.d` auf ein Verzeichnis.

Um ein neues Verzeichnis anzulegen, verwenden Sie `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Im nächsten Thema sehen Sie, wie man den Inhalt eines Verzeichnisses auflistet.

{% include nav.html %}
