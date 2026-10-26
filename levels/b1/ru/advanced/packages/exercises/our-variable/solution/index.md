---
title: 'Решение: Переменная our'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Исходный код можно найти в файле [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Вывод

```
8080
False
```

## Комментарии

1. `our $port` становится частью пространства имён `Config`. Поэтому к ней можно обратиться снаружи как `$Config::port`, и программа выводит `8080`.

1. `my $secret` — лексическая переменная, то есть она приватная для блока пакета. Поэтому её нет в пространстве имён. Путь `$Config::secret` ничего не находит, только неопределённое значение, поэтому `.defined` возвращает `False`. В этом и есть разница, которую даёт `our`.

{% include nav.html %}
