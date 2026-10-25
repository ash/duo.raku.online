---
title: 'Solution: Дослідження результату `prompt` — Числа'
---

{% include menu.html %}

## Код

Ось повна програма. Вона розв'язує задачу. Вона виводить значення, яке ви вводите, і його тип.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Ви можете знайти вихідний код у файлі [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Тестові запуски

Запустіть програму кілька разів. Введіть числа різних типів.

### Цілі числа

Спочатку давайте спробуємо цілі числа. Спробуйте додатні й від'ємні.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Тип результату — `IntStr`. У Raku цей тип вбудований. Він має властивості `Int` і `Str`.

### Раціональні числа

Тепер давайте спробуємо раціональне число. Пам'ятайте: у Raku число з десятковою крапкою — це `Rat`. Це не число з плаваючою комою.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Цього разу дані в `$n` мають тип `RatStr`. Це комбінований тип. Він одночасно `Rat` і `Str`.

### Числа з плаваючою комою

Наостанок спробуйте число в науковій нотації, з літерою `e`. Тепер ви, мабуть, можете вгадати результат.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Так, нове значення має тип `NumStr`.

{% include nav.html %}
