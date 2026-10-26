---
title: 'Розв''язання: Змінна our'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `our $port` стає частиною простору імен `Config`. Тож до неї можна дістатися ззовні як `$Config::port`, що виводить `8080`.

1. `my $secret` є лексичною, тобто приватною для блоку пакунка. Тож її немає в просторі імен. Шлях `$Config::secret` нічого не знаходить, лише невизначене значення, тож `.defined` дає `False`. Ось у чому різниця, яку робить `our`.

{% include nav.html %}
