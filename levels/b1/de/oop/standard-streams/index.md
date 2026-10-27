---
title: Standardströme
translations_gpt:
---

{% include menu.html %}

Jedes Programm hat drei _Standardströme_, die es mit seiner Umgebung verbinden. Das sind die Standardausgabe, die Standardfehlerausgabe und die Standardeingabe. Raku stellt sie über drei besondere Variablen bereit: `$*OUT`, `$*ERR` und `$*IN`.

Tatsächlich schreiben Sie schon von Anfang an auf die Standardausgabe. Sowohl `say` als auch `print` schicken ihren Text an `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Fehlermeldungen und andere Meldungen über Probleme gehen an einen eigenen Strom, die Standardfehlerausgabe. So mischen sie sich nicht mit der eigentlichen Ausgabe des Programms. Die Routine `note` schreibt dorthin:

```raku
note 'Something looks wrong'; # goes to standard error
```

Diese Trennung ist nützlich, weil Sie jeden Strom getrennt umleiten können. Zum Beispiel können Sie die Ausgabe eines Programms in einer Datei speichern. Seine Fehlermeldungen erscheinen trotzdem auf dem Bildschirm.

Sie können auch direkt in die Ströme schreiben. Sowohl `$*OUT` als auch `$*ERR` sind _Handles_ mit eigenen Methoden `say` und `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Der dritte Strom, `$*IN`, ist die Standardeingabe. Sie haben ihn schon benutzt, aber nicht direkt: `prompt` liest eine Zeile daraus. Auf das Lesen von Eingaben kommen wir im Thema über [Dateihandles](/de/oop/file-handles) zurück. Das liegt daran, dass `$*IN` ein Handle ist, genau wie eine geöffnete Datei.

{% include nav.html %}
