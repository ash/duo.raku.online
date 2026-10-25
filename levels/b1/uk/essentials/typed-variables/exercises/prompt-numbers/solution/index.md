---
title: 'Solution: Дослідження результату `prompt` — Числа'
---

{% include menu.html %}

## Код

Ось повна програма. Вона розв'язує задачу і виводить як введене значення, так і його тип.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Ви можете знайти вихідний код у файлі [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Тестові запуски

Запустіть програму кілька разів і введіть числа різних типів.

### Цілі числа

Спочатку спробуємо цілі числа, як додатні, так і від'ємні.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Результат має тип `IntStr`. Цей вбудований тип має властивості як `Int`, так і `Str`.

### Раціональні числа

Тепер спробуємо раціональне число. Пам'ятайте, що в Raku запис числа з десятковою крапкою дає число типу `Rat`. Це не число з плаваючою комою.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Цього разу програма каже, що дані в `$n` мають тип `RatStr`. Це комбінований тип, який поєднує `Rat` і `Str`.

### Числа з плаваючою комою

Нарешті, спробуйте число в науковій нотації. Тепер ви, мабуть, уже можете вгадати результат.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Як і очікувалося, нове значення має тип `NumStr`.

{% include nav.html %}
