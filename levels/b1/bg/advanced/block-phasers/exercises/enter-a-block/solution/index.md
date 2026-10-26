---
title: 'Solution: Влизане в блок'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Изходният код на тази програма можете да намерите във файла [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Изход

```
--entering
body 1
--entering
body 2
```

## Коментари

1. `ENTER` се изпълнява всеки път, когато се влиза в блока, точно преди тялото му. Цикълът влиза в тялото си веднъж при всяко преминаване. Затова `--entering` се отпечатва преди всеки ред `body`.

1. Това е разликата между `ENTER` и `FIRST`. `FIRST` би се изпълнил само веднъж за целия цикъл. А `ENTER` се изпълнява всеки път, когато се влиза в блока.

{% include nav.html %}
