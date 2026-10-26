---
title: zef und das Ökosystem
---

{% include menu.html %}

`zef` ist der Modul-Installer von Raku. Du hast ihn schon benutzt, um Module über den Namen zu installieren. Er funktioniert auch mit einem lokalen Distributionsverzeichnis. Innerhalb einer Distribution kannst du sie direkt testen und installieren:

```
zef test .
zef install .
```

`zef test .` führt die Dateien unter `t/` aus. `zef install .` installiert die Distribution in dein Raku, damit andere Programme sie mit `use` laden können. Die Installation über den Namen, wie bei `zef install Cro`, macht dasselbe. Aber dabei wird die Distribution zuerst aus dem Ökosystem heruntergeladen.

Du kannst deine eigene Distribution **veröffentlichen**, damit andere sie über den Namen installieren können. Dazu lädst du sie in das Ökosystem hoch. Das übliche Werkzeug dafür ist `fez`:

```
fez upload
```

Das verpackt die aktuelle Distribution und schickt sie an das Raku-Ökosystem. Danach funktioniert `zef install Maths::Simple` für alle.

> Für diese Befehle muss `zef`/`fez` installiert sein, und du brauchst eine Netzwerkverbindung. Zum Hochladen brauchst du außerdem ein Ökosystem-Konto.

Das Leben eines geteilten Moduls hat also drei Schritte. Du richtest es mit einer `META6.json` ein und testest es mit `zef test`. Dann veröffentlichst du es mit `fez upload`. Ab dann ist es einfach ein weiterer Name, den jeder mit `zef install` installieren kann.

{% include nav.html %}
