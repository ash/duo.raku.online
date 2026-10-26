---
title: Module aus dem Web installieren
---

{% include menu.html %}

Du kannst eigene Module schreiben. Aber die Raku-Community veröffentlicht auch viele Module. Es gibt Module für viele Dinge, von Web-Frameworks bis zu Datenformaten. Du kannst sie installieren und in deinen Programmen benutzen.

## Installieren mit `zef`

Du installierst Module mit `zef`. `zef` ist der Standard-Modulmanager. Er ist bei Rakudo dabei. Um ein Modul zu installieren, gib `zef` den Namen des Moduls:

```console
$ zef install JSON::Fast
```

`zef` lädt das Modul herunter. Er lädt auch alles herunter, was das Modul braucht. Als Nächstes führt er die Tests des Moduls aus. Dann installiert er das Modul. Ab dann ist das Modul automatisch im Suchpfad. Also kann ein Programm es einfach mit `use` laden. Du brauchst die Option `-I` nicht:

```raku
use JSON::Fast;
```

Du kannst auch das Ökosystem durchsuchen. Das Ökosystem sind alle Module, die Leute veröffentlichen. Und du kannst Module aktualisieren oder entfernen:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Woher Module kommen

Veröffentlichte Module sind im Raku-_Ökosystem_. Du kannst es dir auf der Website [raku.land](https://raku.land) ansehen. Die Website listet die verfügbaren Distributionen auf. Eine Distribution enthält ein oder mehrere Module. Die Website zeigt auch ihre Dokumentation.

## `META6.json`

Eine Distribution zum Teilen hat eine Datei mit einer Beschreibung. Die Datei heißt `META6.json`. Sie enthält den Namen und die Version der Distribution. Sie listet die Module in der Distribution auf. Sie listet auch die anderen Distributionen auf, die sie braucht. `zef` liest diese Datei. So weiß er, was er installieren muss. Er weiß auch, wie die Teile zusammenpassen. Vielleicht willst du dein eigenes Modul veröffentlichen. Dann gib ihm eine korrekte `META6.json`. Mit dieser Datei können alle anderen dein Modul installieren.

{% include nav.html %}
