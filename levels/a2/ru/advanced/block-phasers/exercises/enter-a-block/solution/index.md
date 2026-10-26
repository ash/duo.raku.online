---
title: 'Решение: Вход в блок'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `ENTER` выполняется каждый раз, когда программа входит в блок. Он выполняется прямо перед телом. Цикл входит в своё тело один раз на каждом шаге. Поэтому программа печатает `--entering` перед каждой строкой `body`.

1. В этом разница между `ENTER` и `FIRST`. С `FIRST` код выполняется только один раз за весь цикл. `ENTER` выполняется каждый раз, когда программа входит в блок.

{% include nav.html %}
