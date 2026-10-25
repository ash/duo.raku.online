---
title: 'Solution: Размяна на стойности'
---

{% include menu.html %}

Тази програма използва синтаксиса на Raku от секцията за [скаларни променливи](/bg/essentials/scalar-variables).

## Код

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Можете да намерите изходния код във файла [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Изход

Стартирайте програмата. Проверете, че тя отпечатва стойностите в обратен ред.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Коментари

Програмата има три стъпки. Първо тя създава променливите и им дава стойности. После разменя стойностите. Накрая ги отпечатва. Всяка стъпка използва двете променливи в едно изречение. Вижте най-интересната част. Тук променливите разменят своите стойности:

```raku
($a, $b) = $b, $a;
```

Трябват ви скоби от лявата страна. Можете да ги добавите и от дясната страна:

```raku
($a, $b) = ($b, $a);
```

Какво става без скобите?

```raku
$a, $b = $b, $a;
```

Тогава получавате предупреждение. То казва, че `$a` от дясната страна не се използва:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Всъщност този ред е същото като `$b = $b`. Това присвояване не прави нищо полезно. Можете лесно да го видите. Променете стойностите от дясната страна, например, ето така:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Сега програмата отпечатва още повече предупреждения. Но можете да видите и нещо друго. Само `$b` получава нова стойност:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
