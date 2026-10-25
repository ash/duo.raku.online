---
title: 'Solution: Размяна на стойности'
---

{% include menu.html %}

В тази програма използваме части от синтаксиса на Raku от секцията за [скаларни променливи](/bg/essentials/scalar-variables).

## Код

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Можете да намерите изходния код във файла [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Изход

Стартирайте програмата и проверете, че тя отпечатва стойностите в различен ред.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Коментари

Тази програма има три стъпки. Тя създава променливите и им присвоява стойности, разменя стойностите им и ги отпечатва. Всяка стъпка използва двете променливи в едно и също изречение. Най-интересното е как променливите си разменят стойностите:

```raku
($a, $b) = $b, $a;
```

Скобите от лявата страна са задължителни. Но можете да ги добавите и от дясната страна:

```raku
($a, $b) = ($b, $a);
```

Какво става, ако пропуснете скобите?

```raku
$a, $b = $b, $a;
```

В този случай Raku ви предупреждава, че `$a` от дясната страна не се използва:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Всъщност този ред прави същото като безполезното присвояване `$b = $b`. Лесно можете да видите това, ако промените стойностите отдясно, например:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Този път има още повече предупреждения. Но също така можете да видите, че само `$b` промени своята стойност:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
