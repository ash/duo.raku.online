---
title: 'Розв''язання: Змінна our'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Вихідний код можна знайти у файлі [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Вивід

```
8080
False
```

## Коментарі

1. `our $port` — частина простору імен `Config`. Тож ви можете отримати її ззовні як `$Config::port`. Це виводить `8080`.

1. `my $secret` — лексична змінна. Вона приватна для блоку пакунка. Тож її немає в просторі імен. Шлях `$Config::secret` нічого не знаходить. Він дає невизначене значення. Тож `.defined` дає `False`. Ось у чому різниця, яку робить `our`.

{% include nav.html %}
