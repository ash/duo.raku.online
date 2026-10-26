---
title: 'Solution: Вхід у блок'
translations_gpt: true
---

{% include menu.html %}

Ось один спосіб розв'язати завдання.

## Код

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Вихідний код можна знайти у файлі [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Вивід

```
--entering
body 1
--entering
body 2
```

## Коментарі

1. `ENTER` запускається щоразу, коли програма входить у блок. Він запускається якраз перед тілом. Цикл входить у своє тіло один раз на кожному проході. Тож програма друкує `--entering` перед кожним рядком `body`.

1. У цьому різниця між `ENTER` і `FIRST`. З `FIRST` код запускається лише один раз на весь цикл. `ENTER` запускається щоразу, коли програма входить у блок.

{% include nav.html %}
