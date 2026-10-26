---
title: 'Решение: Вход в блок'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Исходный код можно найти в файле [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Вывод

```
--entering
body 1
--entering
body 2
```

## Комментарии

1. `ENTER` выполняется при каждом входе в блок, прямо перед его телом. Цикл входит в своё тело один раз на каждом проходе. Поэтому `--entering` печатается перед каждой строкой `body`.

1. В этом разница между `ENTER` и `FIRST`. `FIRST` выполнился бы только один раз за весь цикл. А `ENTER` выполняется при каждом входе в блок.

{% include nav.html %}
