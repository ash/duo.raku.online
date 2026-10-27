---
title: Standardströme
translations_gpt:
---

{% include menu.html %}

Jedes Programm hat drei _Standardströme_. Ein Strom bringt Text in ein Programm hinein oder aus ihm heraus. Die drei Ströme verbinden das Programm mit der Außenwelt. Es sind die Standardausgabe, die Standardfehlerausgabe und die Standardeingabe. Raku gibt Ihnen dafür drei besondere Variablen: `$*OUT`, `$*ERR` und `$*IN`.

Die Standardausgabe ist für die normale Ausgabe eines Programms. Sie benutzen sie schon die ganze Zeit. `say` und `print` schicken ihren Text an `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Fehlermeldungen und andere Meldungen über Probleme gehen an die Standardfehlerausgabe. Das ist ein eigener Strom. So mischen sich diese Meldungen nicht mit der echten Ausgabe des Programms. Die Routine `note` schreibt auf die Standardfehlerausgabe:

```raku
note 'Something looks wrong'; # goes to standard error
```

Das ist nützlich. Sie können jeden der zwei Ströme an einen anderen Ort schicken. Das nennt man Umleiten. Zum Beispiel können Sie die Ausgabe in einer Datei speichern. Aber Sie sehen die Fehlermeldungen trotzdem auf dem Bildschirm.

Sie können auch direkt in die Ströme schreiben. `$*OUT` und `$*ERR` sind jeweils ein _Handle_. Mit einem Handle kann ein Programm Daten schreiben oder lesen. Jeder Handle hat seine eigenen Methoden `say` und `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Der dritte Strom, `$*IN`, ist die Standardeingabe. Er bringt Text in das Programm, zum Beispiel von der Tastatur. Sie haben ihn schon benutzt, aber nicht direkt. Die Funktion `prompt` liest eine Zeile daraus. Zum Lesen von Eingaben kommen wir auf der Seite über [Dateihandles](/de/oop/file-handles) zurück. Der Grund: `$*IN` ist ein Handle, genau wie eine offene Datei.

{% include nav.html %}
