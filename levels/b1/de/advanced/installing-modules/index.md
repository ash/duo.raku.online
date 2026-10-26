---
title: Module aus dem Web installieren
---

{% include menu.html %}

Du musst nicht nur die Module benutzen, die du selbst schreibst. Die Raku-Community hat eine große Sammlung von Modulen veröffentlicht. Sie decken alles ab, von Web-Frameworks bis zu Datenformaten. Du kannst sie installieren und in deinen eigenen Programmen benutzen.

## Der `zef`-Installer

Module werden mit `zef` installiert, dem Standard-Modulmanager. Er wird zusammen mit Rakudo geliefert. Um ein Modul zu installieren, gibst du `zef` seinen Namen:

```console
$ zef install JSON::Fast
```

`zef` lädt das Modul zusammen mit allem herunter, wovon es abhängt. Dann führt er die Tests des Moduls aus und installiert das Modul. Ein installiertes Modul ist automatisch im Suchpfad. Also kann ein Programm es mit einem einfachen `use` laden. Die Option `-I` wird nicht gebraucht:

```raku
use JSON::Fast;
```

`zef` kann auch das Ökosystem durchsuchen. Er kann außerdem Module aktualisieren oder entfernen:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Woher Module kommen

Veröffentlichte Module gehören zum Raku-_Ökosystem_. Du kannst es dir auf der Website [raku.land](https://raku.land) ansehen. Sie listet die verfügbaren Distributionen und ihre Dokumentation auf.

## `META6.json`

Eine Distribution, die zum Teilen gedacht ist, hat eine Beschreibungsdatei namens `META6.json`. Diese Datei speichert den Namen und die Version der Distribution. Außerdem nennt sie ihre Module und die anderen Distributionen, von denen sie abhängt. `zef` liest diese Datei. Daraus erfährt `zef`, was er installieren muss und wie die Teile zusammenpassen. Wenn du dein eigenes Modul veröffentlichst, braucht es eine korrekte `META6.json`. Nur so können alle anderen es installieren.

{% include nav.html %}
