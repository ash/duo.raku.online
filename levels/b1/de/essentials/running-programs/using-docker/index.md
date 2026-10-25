---
title: Verwendung von Docker
---

{% include menu.html %}

Es gibt ein Docker-Image von Rakudo, das aus historischen Gründen `rakudo-star` heißt. Sie können damit eine REPL-Shell starten. Sie können damit auch ein Programm aus einer Datei ausführen.

Führen Sie den folgenden Befehl aus, um die Shell zu starten. Falls nötig, lädt er das neueste `rakudo-star`-Image herunter.

```console
$ docker run -it rakudo-star
```
Um ein Programm auszuführen, verwenden Sie den folgenden Befehl:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Um den Container aufzuräumen, wenn er beendet wird, fügen Sie das Flag `--rm` hinzu. Dann wird auch sein Dateisystem entfernt. Weitere Anleitungen finden Sie auf der Projektseite.

## Externe Links

* [Docker-Image](https://hub.docker.com/_/rakudo-star/)
* [Raku Docker-Projekt auf GitHub](https://github.com/Raku/docker)

{% include nav.html %}
