---
title: 'Solution: Вхід у блок'
translations_gpt: true
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `ENTER` запускається щоразу, коли програма входить у блок, якраз перед його тілом. Цикл входить у своє тіло один раз на кожному проході. Тож `--entering` друкується перед кожним рядком `body`.

1. У цьому різниця між `ENTER` і `FIRST`. `FIRST` запустився б лише один раз на весь цикл. А `ENTER` запускається щоразу, коли програма входить у блок.

{% include nav.html %}
