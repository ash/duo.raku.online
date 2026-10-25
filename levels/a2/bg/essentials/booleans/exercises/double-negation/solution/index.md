---
title: 'Solution: Двойно отрицание'
---

{% include menu.html %}

Нека добавим код за втората част на задачата. Използваме същата променлива отново:

## Код

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Можете да намерите пълния код във файла [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Коментари

Още не стартирайте програмата. Първо нека помислим: какво отпечатва тя? Преди променливата има два оператора за отрицание. Отрицанието променя `False` на `True` и `True` на `False`. Тук двата знака `!` работят като два отделни оператора за отрицание. В първия случай първото отрицание променя `False` на `True`. После второто отрицание веднага го връща на `False`. Вторият случай работи по същия начин. След две отрицания получаваме булевата стойност от началото.

## Изход

Това е изходът на програмата. Той показва, че сме прави:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
