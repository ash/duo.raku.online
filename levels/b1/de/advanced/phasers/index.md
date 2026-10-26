---
title: Phasers
---

{% include menu.html %}

Ein _Phaser_ ist ein spezieller Block. Er läuft automatisch zu einem bestimmten Zeitpunkt im Leben eines Programms. Er läuft nicht dort, wo er im Quellcode steht. Du rufst einen Phaser nicht auf. Du sagst nur mit dem Namen des Blocks, _wann_ sein Code laufen soll.

Die häufigsten Phaser markieren die Phasen des ganzen Programms:

* `BEGIN` läuft so früh wie möglich, während Raku das Programm noch kompiliert;
* `INIT` läuft einmal beim Start des Programms, vor dem Hauptcode;
* `END` läuft einmal ganz am Ende, wenn der Hauptcode fertig ist.

Das nächste Programm stellt diese Phaser zwischen gewöhnliche Anweisungen. Beachte, dass die Ausgabe nicht der Reihenfolge der Zeilen in der Datei folgt:

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

`BEGIN` läuft zuerst, während das Programm kompiliert wird. Dann, wenn das Programm läuft, kommt `INIT` vor dem Hauptteil. Danach gibt der Hauptteil etwas aus. `END` läuft zuletzt, egal wo es in der Datei steht.

`END` wird oft kurz vor dem Ende des Programms verwendet. Es kann eine Zusammenfassung ausgeben oder etwas aufräumen. `BEGIN` ist nützlich für Arbeit, die vor allem anderen passieren muss.

{% include nav.html %}
