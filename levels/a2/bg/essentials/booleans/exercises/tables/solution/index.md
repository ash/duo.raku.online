---
title: 'Solution: Булеви таблици'
---

{% include menu.html %}

Ето един начин да решите задачата. Програмата отпечатва всички резултати от булевите операции.

## Код

```raku
say 'True && True е ', True && True; 
say 'True && False е ', True && False;
say 'False && True е ', False && True;
say 'False && False е ', False && False;

say 'True || True е ', True || True; 
say 'True || False е ', True || False;
say 'False || True е ', False || True;
say 'False || False е ', False || False;

say 'True ^^ True е ', True ^^ True; 
say 'True ^^ False е ', True ^^ False;
say 'False ^^ True е ', False ^^ True;
say 'False ^^ False е ', False ^^ False;
```

🦋 Можете да намерите пълния код във файла [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Резултат

Стартирайте програмата. Тя отпечатва тази таблица.

```console
$ raku tables.raku
True && True е True
True && False е False
False && True е False
False && False е False
True || True е True
True || False е True
False || True е True
False || False е False
True ^^ True е Nil
True ^^ False е True
False ^^ True е True
False ^^ False е False
```

## Коментари

Забележете, че тук не са нужни скоби около булевите операции. Причината е приоритетът. Приоритетът е редът, в който Raku прави операциите. Булевите операции имат по-висок приоритет. Затова Raku ги прави първо. Но при конкатенация на низове скобите са нужни:

```raku
say 'True && True е ' ~ (True && True);
```

Можете също да сложите кода вътре в низа. Това се нарича [интерполация на код](/bg/essentials/strings/code-interpolation).

{% include nav.html %}
