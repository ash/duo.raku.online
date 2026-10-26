---
title: Veröffentlichen mit fez
---

{% include menu.html %}

Das vorherige Thema hat `fez` vorgestellt, ein Werkzeug, das Distributionen in das Raku-Ökosystem hochlädt. Du musst `fez` nicht benutzen, denn es gibt auch andere Wege zum Veröffentlichen. Aber es ist die häufigste Wahl. Es kann auch mehr als nur hochladen. Es kann eine neue Distribution für dich einrichten und dein Autoren-Konto verwalten. Installiere es mit `zef`:

```
zef install fez
```

## Eine Distribution starten

Du kannst eine `META6.json` und die Verzeichnisse `lib/` und `t/` von Hand erstellen. Oder du lässt `fez` sie für dich einrichten:

```
fez init My::Greeting
```

`fez init` erstellt eine neue Distribution, auf der du aufbauen kannst. Das ist ein Projektverzeichnis mit einer fertigen `META6.json` und dem Standard-Layout. So kannst du sofort Code unter `lib/` und Tests unter `t/` schreiben. Du musst die Metadaten-Datei nicht selbst vorbereiten.

## Registrieren und Anmelden

Zum Veröffentlichen brauchst du ein Ökosystem-Konto. Du erstellst es einmal mit `fez register`, das nach Benutzername, E-Mail und Passwort fragt. Dann meldest du dich mit `fez login` an. Es speichert deinen Schlüssel, damit spätere Befehle wissen, wer du bist:

```
fez register
fez login
```

Dein Benutzername ist wichtig. Die `META6.json` einer Distribution muss ein `auth`-Feld mit dem Wert `zef:<benutzername>` haben. Daran erkennt das Ökosystem, dass der Upload wirklich von dir kommt.

## Hochladen

Wenn du ein Konto hast und die Distribution fertig ist, führe `fez upload` aus. Es verpackt das aktuelle Verzeichnis und schickt es ab:

```
fez upload
```

Danach kann jeder sie mit `zef install My::Greeting` über den Namen installieren. Du kannst jede Version nur einmal hochladen. Denk also daran, die `version` in `META6.json` zu erhöhen, bevor du ein Update veröffentlichst.

## Weitere nützliche Befehle

Hier sind noch ein paar `fez`-Befehle, die du brauchen wirst:

* `fez review` — prüfe eine Distribution auf mögliche Probleme, bevor du sie hochlädst;
* `fez list` — zeige die Distributionen an, die du schon veröffentlicht hast;
* `fez refresh` — erstelle `META6.json` neu aus den Dateien, die jetzt auf der Festplatte sind.

> Für all diese Befehle muss `fez` installiert sein, und du brauchst eine Netzwerkverbindung. Alles nach `init` braucht außerdem ein Ökosystem-Konto.

{% include nav.html %}
