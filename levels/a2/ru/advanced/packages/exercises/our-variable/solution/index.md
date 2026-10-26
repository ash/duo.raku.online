---
title: 'Решение: Переменная our'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `our $port` — часть пространства имён `Config`. Поэтому её можно получить снаружи как `$Config::port`. Так программа выводит `8080`.

1. `my $secret` — лексическая переменная. Она приватная для блока пакета. Поэтому её нет в пространстве имён. Путь `$Config::secret` ничего не находит. Он даёт неопределённое значение. Поэтому `.defined` даёт `False`. Вот в чём разница с `our`.

{% include nav.html %}
