---
title: 'Solution: Світлофори'
---

{% include menu.html %}

Ось ідея рішення. Масив зберігає чотири стани світлофора. Ми «зациклюємо індексацію» цього масиву:

```raku
my @lights = <yellow red yellow green>;
```

Спочатку рахуйте секунди від початку. Використовуйте це число прямо як індекс у масиві. Пізніше число стає більшим за 3. Тоді ви повертаєтеся на початок масиву. Це робить оператор модуло `%`. Довжина масиву — це `@lights.elems`. Але тут вам не треба викликати метод `elems`. Масив є операндом `%`. Тож Raku перетворює ім'я масиву на число. Це перетворення дає кількість елементів.

## Код

Ось рішення:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Знайдіть програму у файлі [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Вивід

Запустіть програму. Потім спробуйте в програмі й інші значення.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
