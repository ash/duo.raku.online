---
title: Using docker to run Raku
---

{% include menu.html %}

There is a docker image of Rakudo. It is called `rakudo-star`, for historical reasons. You can use it to run a REPL shell. You can also run a program from a file with it.

Run this command to start the shell. If needed, it downloads the latest `rakudo-star` image.

```console
$ docker run -it rakudo-star
```
To run a program, use the following command:

```console
$ docker run -v "$(pwd):/script" rakudo-star raku /script/hello.raku
```

Do you want to clean up after the container stops? Then add the `--rm` flag. It removes the container and its file system. You can find more instructions on the project page.

## External links

* [Docker image](https://hub.docker.com/_/rakudo-star/)
* [Raku docker project on GitHub](https://github.com/Raku/docker)

{% include nav.html %}
