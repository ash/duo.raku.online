---
title: Veröffentlichen mit fez
---

{% include menu.html %}

Das letzte Thema hat `fez` gezeigt. Mit `fez` lädst du eine Distribution in das Raku-Ökosystem hoch. Du musst `fez` nicht benutzen. Es gibt auch andere Wege zum Veröffentlichen. Aber die meisten Leute benutzen `fez`. Und es kann mehr als hochladen. Es kann auch eine neue Distribution für dich erstellen. Es kann sich auch um dein Autoren-Konto kümmern. Installiere `fez` mit `zef`:

```
zef install fez
```

## Eine neue Distribution erstellen

Du kannst die `META6.json` und die Verzeichnisse `lib/` und `t/` selbst machen. Aber `fez` kann sie auch für dich machen:

```
fez init My::Greeting
```

`fez init` erstellt den Anfang einer neuen Distribution. Das ist ein Projektverzeichnis. Es hat schon eine `META6.json` und das Standard-Layout. So kannst du sofort mit dem Schreiben anfangen. Der Code kommt unter `lib/`, und die Tests kommen unter `t/`. Du musst die `META6.json` nicht selbst vorbereiten.

## Registrieren und Anmelden

Zum Veröffentlichen brauchst du ein Konto im Ökosystem. Du erstellst das Konto nur einmal, mit `fez register`. Es fragt nach einem Benutzernamen, einer E-Mail und einem Passwort. Dann meldest du dich mit `fez login` an. Es speichert deinen Schlüssel. Mit diesem Schlüssel wissen die nächsten Befehle, wer du bist:

```
fez register
fez login
```

Dein Benutzername ist wichtig. Die `META6.json` einer Distribution muss ein Feld `auth` haben. Sein Wert ist `zef:<benutzername>`. So weiß das Ökosystem, dass der Upload wirklich von dir ist.

## Hochladen

Du hast ein Konto, und die Distribution ist fertig. Jetzt packt `fez upload` das aktuelle Verzeichnis und schickt es ab:

```
fez upload
```

Danach kann jeder sie über ihren Namen mit `zef install My::Greeting` installieren. Du kannst jede Version nur einmal hochladen. Mach deshalb vor einem Update die `version` in `META6.json` höher.

## Mehr nützliche Befehle

Du brauchst auch diese `fez`-Befehle:

* `fez review` — suche vor dem Hochladen nach möglichen Problemen in einer Distribution;
* `fez list` — zeige die Distributionen, die du schon veröffentlicht hast;
* `fez refresh` — mache `META6.json` neu aus den Dateien, die jetzt auf der Festplatte sind.

> All diese Befehle brauchen ein installiertes `fez` und das Netzwerk. Alles nach `init` braucht auch ein Ökosystem-Konto.

{% include nav.html %}
