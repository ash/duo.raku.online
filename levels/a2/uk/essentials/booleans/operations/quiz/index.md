---
title: 'Тест: Логічні операції'
---

{% include menu.html %}

Нижче є кілька програм. Що виводить кожна програма? Виберіть правильну відповідь.

## 1

Ось програма:

```raku
my $value = True && False;
say $value;
```

Що вона виводить?

{:.quiz}
0 | True
1 | False

## 2 

Що виводить друга програма?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Що виводить ця програма?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Коментарі

У другій і третій програмах є вирази з трьома булевими значеннями. Результат залежить від порядку операцій. Оператор `&&` має вищий пріоритет, ніж `||`. Тому Raku виконує `&&` першим.

{% include nav.html %}
