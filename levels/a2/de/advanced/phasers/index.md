---
title: Phasers
---

{% include menu.html %}

Ein _Phaser_ ist ein spezieller Block. Er läuft von selbst zu einem bestimmten Zeitpunkt im Leben eines Programms. Er läuft nicht an seiner Stelle im Code. Du rufst einen Phaser nicht auf. Du sagst nur, _wann_ sein Code laufen muss. Das sagt der Name des Blocks.

Die häufigsten Phaser gehören zu den Phasen des ganzen Programms:

* `BEGIN` läuft so früh wie möglich. Zu dieser Zeit kompiliert Raku das Programm noch.
* `INIT` läuft einmal, wenn das Programm startet. Er läuft vor dem Hauptcode.
* `END` läuft einmal ganz am Ende. Er läuft, wenn der Hauptcode fertig ist.

Dieses Programm hat diese Phaser zwischen normalen Anweisungen. Schau dir die Ausgabe an. Sie folgt nicht der Reihenfolge der Zeilen in der Datei:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

Das Programm gibt aus:

```
BEGIN
INIT
main body
END
```

`BEGIN` läuft zuerst, während der Kompilierung. Dann läuft das Programm. `INIT` läuft vor dem Hauptteil. Danach gibt der Hauptteil seine Zeile aus. `END` läuft zuletzt. Seine Stelle in der Datei ist egal.

Man nutzt `END` oft, um eine Zusammenfassung auszugeben. Man nutzt es auch, um etwas aufzuräumen. Das passiert kurz vor dem Ende des Programms. `BEGIN` ist nützlich für Arbeit, die vor allem anderen passieren muss.

{% include nav.html %}
