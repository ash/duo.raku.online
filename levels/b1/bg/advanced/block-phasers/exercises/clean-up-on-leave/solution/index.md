---
title: 'Solution: Почистване при напускане'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Изходният код на тази програма можете да намерите във файла [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Изход

```
Working
Cleanup
```

## Коментари

1. След като `Working` се отпечата, `return` веднага излиза от подпрограмата. Затова `never reached` никога не се отпечатва.

1. Тялото е напуснато рано. Въпреки това фазерът `LEAVE` се изпълнява на излизане и отпечатва `Cleanup`. Винаги можете да разчитате на това. Точно затова `LEAVE` е правилното място за освобождаване на ресурси. Той се изпълнява независимо как свършва блокът.

{% include nav.html %}
