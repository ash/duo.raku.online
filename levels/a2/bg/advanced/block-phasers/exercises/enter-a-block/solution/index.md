---
title: 'Solution: Влизане в блок'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `ENTER` се изпълнява всеки път, когато програмата влиза в блока. Той се изпълнява точно преди тялото. Цикълът влиза в тялото си веднъж при всяка обиколка. Затова програмата отпечатва `--entering` преди всеки ред `body`.

1. Това е разликата между `ENTER` и `FIRST`. С `FIRST` кодът се изпълнява само веднъж за целия цикъл. `ENTER` се изпълнява всеки път, когато програмата влиза в блока.

{% include nav.html %}
