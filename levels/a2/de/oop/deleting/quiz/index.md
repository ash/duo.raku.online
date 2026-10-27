---
title: 'Quiz — Dateien löschen'
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | ein Fehler
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` entfernt nur ein **leeres** Verzeichnis. Hier ist noch `x.txt` in `data`. Also entfernt `rmdir` nichts. Das Verzeichnis bleibt an seinem Platz. Darum ergibt `.e` immer noch `True`. Wie können Sie das Verzeichnis löschen? Entfernen Sie zuerst alles darin, zum Beispiel mit `.unlink for 'data'.IO.dir`. Rufen Sie dann `rmdir` auf.

</div>

{% include nav.html %}
