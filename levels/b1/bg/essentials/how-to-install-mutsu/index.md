---
title: Как да инсталирате mutsu
translations_gpt:
---

{% include menu.html %}

mutsu предлага готови компилации за macOS и Linux. Има компилации както за процесори Intel/AMD, така и за ARM. Те са на страницата с издания на хранилището му в GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Всяка компилация съдържа два изпълними файла: самия `mutsu` и `mzef`, неговия мениджър на пакети.

## С mise

Най-лесният начин да инсталирате издание е [mise](https://mise.jdx.dev/). Това е програма, която инсталира и обновява инструменти за разработчици. Една команда изтегля компилацията за вашата машина. Освен това тя поставя и `mutsu`, и `mzef` във вашия `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## С Docker

Ако на системата ви работи Docker, можете да използвате mutsu, без да го инсталирате. Това работи и на Windows. Тази команда стартира интерактивната обвивка REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А това изпълнява програма от текущата директория:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Изграждане от изходния код

mutsu е написан на Rust. Затова можете и сами да го изградите с Cargo. Изходният код е в хранилището му, което обяснява и подробностите.

## Номера на версиите

Опцията `--version` показва коя версия имате:

```console
$ mutsu --version
mutsu 0.24.0
```

Това е изданието на самия mutsu. Както и при другите компилатори, езикът може да ви каже версията си:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Сравнете това с начина, по който се представят [Rakudo](/bg/essentials/how-to-install-rakudo) и [Raku++](/bg/essentials/how-to-install-rakupp).

{% include nav.html %}
