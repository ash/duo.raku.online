---
title: zef und das Ökosystem
---

{% include menu.html %}

`zef` installiert Raku-Module. Du hast damit schon Module über ihren Namen installiert. `zef` funktioniert auch mit einer Distribution in einem lokalen Verzeichnis. Geh in das Verzeichnis einer Distribution. Von dort kannst du sie direkt testen und installieren:

```
zef test .
zef install .
```

`zef test .` führt die Dateien unter `t/` aus. `zef install .` installiert die Distribution in dein Raku. Dann können andere Programme sie mit `use` laden. Du kannst auch über den Namen installieren, zum Beispiel mit `zef install Cro`. Das macht dasselbe. Aber zuerst lädt es die Distribution aus dem Ökosystem herunter.

Vielleicht willst du deine eigene Distribution **veröffentlichen**. Dann können andere Leute sie über den Namen installieren. Dazu lädst du sie in das Ökosystem hoch. Meistens benutzen die Leute dafür `fez`:

```
fez upload
```

Das packt die aktuelle Distribution und schickt sie an das Raku-Ökosystem. Danach funktioniert `zef install Maths::Simple` für jeden.

> Diese Befehle brauchen ein installiertes `zef`/`fez` und das Netzwerk. Zum Hochladen brauchst du auch ein Ökosystem-Konto.

Ein geteiltes Modul geht also durch drei Schritte. Zuerst gibst du ihm das Standard-Layout und eine `META6.json`. Als Nächstes testest du es mit `zef test`. Dann veröffentlichst du es mit `fez upload`. Danach ist es einfach ein weiterer Name. Jeder kann es mit `zef install` installieren.

{% include nav.html %}
