---
title: Как установить mutsu
translations_gpt:
---

{% include menu.html %}

mutsu предлагает готовые сборки для macOS и Linux. Есть сборки и для процессоров Intel/AMD, и для ARM. Они лежат на странице релизов его репозитория на GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Каждая сборка содержит два исполняемых файла: сам `mutsu` и `mzef`, его менеджер пакетов.

## С помощью mise

Самый простой способ установить выпуск — [mise](https://mise.jdx.dev/). Это программа, которая устанавливает и обновляет инструменты разработчика. Одна команда скачивает сборку для вашего компьютера. Она также добавляет в ваш `PATH` и `mutsu`, и `mzef`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## С помощью Docker

Если в вашей системе работает Docker, вы можете пользоваться mutsu, не устанавливая его. Это работает и в Windows. Эта команда запускает интерактивную оболочку REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А эта запускает программу из текущего каталога:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Сборка из исходного кода

mutsu написан на Rust. Поэтому его можно собрать и самому с помощью Cargo. Исходный код лежит в его репозитории, где также описаны подробности.

## Номера версий

Опция `--version` показывает, какая у вас версия:

```console
$ mutsu --version
mutsu 0.24.0
```

Это выпуск самого mutsu. Как и в случае с другими компиляторами, язык сам может сказать вам свою версию:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Сравните это с тем, как представляются [Rakudo](/ru/essentials/how-to-install-rakudo)
и [Raku++](/ru/essentials/how-to-install-rakupp).

{% include nav.html %}
