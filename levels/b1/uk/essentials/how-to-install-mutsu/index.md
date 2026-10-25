---
title: Як встановити mutsu
translations_gpt:
---

{% include menu.html %}

mutsu пропонує готові збірки для macOS і Linux. Є збірки як для процесорів Intel/AMD, так і для ARM. Вони лежать на сторінці випусків його репозиторію на GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Кожна збірка містить два виконувані файли: сам `mutsu` і `mzef`, його менеджер пакетів.

## За допомогою mise

Найпростіший спосіб встановити випуск — [mise](https://mise.jdx.dev/). Це програма, яка встановлює й оновлює інструменти розробника. Одна команда завантажує збірку для вашого комп'ютера. Вона також додає до вашого `PATH` і `mutsu`, і `mzef`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## За допомогою Docker

Якщо у вашій системі працює Docker, ви можете використовувати mutsu, не встановлюючи його. Це працює і в Windows. Ця команда запускає інтерактивну оболонку REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А ця запускає програму з поточного каталогу:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Збирання з вихідного коду

mutsu написано мовою Rust. Тож ви можете зібрати його й самостійно за допомогою Cargo. Вихідний код лежить у його репозиторії, де також пояснено подробиці.

## Номери версій

Опція `--version` показує, яка у вас версія:

```console
$ mutsu --version
mutsu 0.24.0
```

Це випуск самого mutsu. Як і з іншими компіляторами, мова може сама сказати вам свою версію:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Порівняйте це з тим, як представляють себе [Rakudo](/uk/essentials/how-to-install-rakudo) і [Raku++](/uk/essentials/how-to-install-rakupp).

{% include nav.html %}
