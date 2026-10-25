---
title: Verwendung von Docker
---

{% include menu.html %}

Es gibt ein Docker-Image von Rakudo. Es heißt `rakudo-star`, aus historischen Gründen. Sie können damit eine REPL-Shell starten. Sie können damit auch ein Programm aus einer Datei ausführen.

Führen Sie diesen Befehl aus, um die Shell zu starten. Wenn nötig, lädt er das neueste `rakudo-star`-Image herunter.

```console
$ docker run -it rakudo-star
```
Um ein Programm auszuführen, verwenden Sie den folgenden Befehl:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Möchten Sie aufräumen, wenn der Container stoppt? Dann fügen Sie das Flag `--rm` hinzu. Es entfernt den Container und sein Dateisystem. Weitere Anleitungen finden Sie auf der Projektseite.

## Externe Links

* [Docker-Image](https://hub.docker.com/_/rakudo-star/)
* [Raku Docker-Projekt auf GitHub](https://github.com/Raku/docker)

{% include nav.html %}
