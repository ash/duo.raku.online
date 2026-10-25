---
title: 'Solution: Преглед на резултата от `prompt` — Числа'
---

{% include menu.html %}

## Код

Ето пълната програма. Тя решава задачата и отпечатва както въведената стойност, така и нейния тип.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Можете да намерите изходния код във файла [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Тестови изпълнения

Изпълнете програмата няколко пъти и въведете числа от различни типове.

### Цели числа

Първо, нека опитаме с цели числа, както положителни, така и отрицателни.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Резултатът има тип `IntStr`. Този вграден тип има свойствата и на `Int`, и на `Str`.

### Рационални числа

Сега нека опитаме с рационално число. Помнете, че в Raku, ако запишете число с десетична точка, получавате число от тип `Rat`. То не е число с плаваща запетая.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Този път програмата казва, че данните в `$n` имат тип `RatStr`. Това е комбиниран тип от `Rat` и `Str`.

### Числа с плаваща запетая

Накрая опитайте число в научна нотация. Вече вероятно можете да познаете изхода.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Както очаквахме, новата стойност е от тип `NumStr`.

{% include nav.html %}
