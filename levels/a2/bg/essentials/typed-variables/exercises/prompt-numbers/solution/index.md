---
title: 'Solution: Преглед на резултата от `prompt` — Числа'
---

{% include menu.html %}

## Код

Ето цялата програма. Тя решава задачата. Тя отпечатва стойността, която въвеждате, и нейния тип.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Можете да намерите изходния код във файла [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Тестови изпълнения

Стартирайте програмата няколко пъти. Въведете числа от различни типове.

### Цели числа

Първо, нека опитаме с цели числа. Опитайте положителни и отрицателни.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Типът на резултата е `IntStr`. Този тип е вграден в Raku. Той има свойствата на `Int` и на `Str`.

### Рационални числа

Сега нека опитаме с рационално число. Запомнете: в Raku число с десетична точка е `Rat`. То не е число с плаваща запетая.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Този път данните в `$n` имат тип `RatStr`. Това е комбиниран тип. Той е едновременно `Rat` и `Str`.

### Числа с плаваща запетая

Накрая опитайте число в научна нотация, с буквата `e`. Сега вероятно можете да познаете изхода.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Да, новата стойност има тип `NumStr`.

{% include nav.html %}
