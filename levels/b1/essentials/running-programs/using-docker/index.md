---
title: Using docker to run Raku
---

{% include menu.html %}

There is a Rakudo docker image, called `rakudo-star` for historical reasons. You can use it to run a REPL shell. You can also execute a program from a file with it.

Run the following command to start the shell. If needed, it will download the latest `rakudo-star` image.

```console
$ docker run -it rakudo-star
```
To run a program, use the following command:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

To clean up the container when it exits, add the `--rm` flag. Its file system is then removed too. You can find more instructions on the project page.

## External links

* [Docker image](https://hub.docker.com/_/rakudo-star/)
* [Raku docker project on GitHub](https://github.com/Raku/docker)

{% include nav.html %}
