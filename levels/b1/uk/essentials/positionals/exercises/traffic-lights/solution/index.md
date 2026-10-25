---
title: 'Solution: Світлофори'
---

{% include menu.html %}

Ідея рішення — «зациклити індексацію» масиву. Масив зберігає чотири стани світлофора:

```raku
my @lights = <yellow red yellow green>;
```

Спочатку кількість секунд від початку використовується прямо як індекс. Коли вона більша за 3, ви повертаєтеся на початок масиву. Це робить оператор модуло `%`. Довжина масиву — це `@lights.elems`. Але з `%` вам не потрібно викликати метод `elems`. Масив є операндом `%`, тому його ім'я перетворюється на число. Це перетворення зроблене так, щоб давати кількість елементів.

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

Запустіть програму. Також спробуйте інші значення в програмі.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
