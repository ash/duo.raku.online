---
title: Как установить mutsu
translations_gpt:
---

{% include menu.html %}

У mutsu есть готовые сборки для macOS и Linux. Они работают на процессорах Intel/AMD и ARM. Проект находится на GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Сборки можно найти на его странице релизов. В каждой сборке есть две программы: сам `mutsu` и `mzef`. `mzef` — это его менеджер пакетов. Он устанавливает модули Raku.

## С помощью mise

Самый простой способ установить выпуск — [mise](https://mise.jdx.dev/). Эта программа устанавливает и обновляет инструменты для разработчиков. Вам нужна только одна команда. Она скачивает сборку для вашего компьютера. Ещё она добавляет `mutsu` и `mzef` в ваш `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## С помощью Docker

С Docker вы можете пользоваться mutsu без установки. Это работает в любой системе с Docker, и в Windows тоже. Эта команда запускает интерактивную оболочку REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А эта команда запускает программу из текущей папки:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Сборка из исходного кода

mutsu написан на Rust. Поэтому вы можете сами собрать его с помощью Cargo. Возьмите исходный код из его репозитория. Подробности есть в репозитории.

## Номера версий

Какая у вас версия? Используйте опцию `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Это выпуск самого mutsu. Версия языка Raku — это другое. Её нужно спросить у самого языка, как и с другими компиляторами:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Сравните это с [Rakudo](/ru/essentials/how-to-install-rakudo) и [Raku++](/ru/essentials/how-to-install-rakupp). Посмотрите, как они показывают свои версии.

{% include nav.html %}
