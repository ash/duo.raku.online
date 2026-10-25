---
title: Как да инсталирате mutsu
translations_gpt:
---

{% include menu.html %}

mutsu има готови компилации за macOS и Linux. Те работят на процесори Intel/AMD и ARM. Проектът е в GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Компилациите са на страницата му с издания. Всяка компилация има два програмни файла: самия `mutsu` и `mzef`. `mzef` е неговият мениджър на пакети. Той инсталира модули на Raku.

## С mise

Най-лесният начин да инсталирате издание е [mise](https://mise.jdx.dev/). Тази програма инсталира и обновява инструменти за разработчици. Трябва ви само една команда. Тя изтегля компилацията за вашия компютър. Освен това поставя `mutsu` и `mzef` във вашия `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## С Docker

С Docker можете да използвате mutsu, без да го инсталирате. Това работи на всяка система с Docker, също и на Windows. Тази команда стартира интерактивната обвивка REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

А тази команда изпълнява програма от текущата директория:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Изграждане от изходния код

mutsu е написан на Rust. Затова можете и сами да го изградите с Cargo. Използвайте изходния код от хранилището му. Хранилището обяснява подробностите.

## Номера на версиите

Коя версия имате? Използвайте опцията `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Това е изданието на самия mutsu. Версията на езика Raku е друго нещо. За нея питате самия език, както при другите компилатори:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Сравнете това с [Rakudo](/bg/essentials/how-to-install-rakudo) и [Raku++](/bg/essentials/how-to-install-rakupp). Вижте как те показват версиите си.

{% include nav.html %}
