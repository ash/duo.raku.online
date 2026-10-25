---
title: Як встановити mutsu
translations_gpt:
---

{% include menu.html %}

У mutsu є готові збірки для macOS і Linux. Вони працюють на процесорах Intel/AMD і ARM. Проєкт є на GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Ви можете знайти збірки на його сторінці випусків. Кожна збірка має два файли програм: сам `mutsu` і `mzef`. `mzef` — це його менеджер пакетів. Він встановлює модулі Raku.

## За допомогою mise

Найпростіший спосіб встановити випуск — це [mise](https://mise.jdx.dev/). Ця програма встановлює й оновлює інструменти для розробників. Вам потрібна лише одна команда. Вона завантажує збірку для вашого комп'ютера. Вона також додає `mutsu` і `mzef` до вашого `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## За допомогою Docker

З Docker ви можете користуватися mutsu без встановлення. Це працює в будь-якій системі з Docker, також у Windows. Ця команда запускає інтерактивну оболонку REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А ця команда запускає програму з поточного каталогу:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Збирання з вихідного коду

mutsu написано мовою Rust. Тож ви можете й самі зібрати його за допомогою Cargo. Використайте вихідний код з його репозиторію. Репозиторій пояснює всі подробиці.

## Номери версій

Яка у вас версія? Використайте опцію `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Це випуск самого mutsu. Версія мови Raku — це інша річ. Про неї ви питаєте саму мову, як і з іншими компіляторами:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Порівняйте це з [Rakudo](/uk/essentials/how-to-install-rakudo) і [Raku++](/uk/essentials/how-to-install-rakupp). Подивіться, як вони показують свої версії.

{% include nav.html %}
