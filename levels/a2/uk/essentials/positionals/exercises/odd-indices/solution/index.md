---
title: 'Solution: Непарні індекси'
---

{% include menu.html %}

Ви можете вирішити це завдання за допомогою `loop`. Щоразу додавайте 2 до змінної циклу. Але ви також можете використати цикл `for`. Він іде від 1 до половини довжини масиву. Потім ви множите кожне число на два.

## Код

Ось рішення:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Знайдіть програму у файлі [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Вивід

Спочатку запустіть програму з початковими даними.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Потім додайте ще один елемент до даних:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Новий елемент має непарний індекс. Перевірте, що він є у виводі:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Коментарі

Це завдання повернеться в наступній частині курсу. Там ми вирішимо його зовсім по-іншому.

{% include nav.html %}
