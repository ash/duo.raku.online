---
title: 'Solution: Почистване при напускане'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Първо програмата отпечатва `Working`. После `return` веднага излиза от подпрограмата. Затова програмата никога не отпечатва `never reached`.

1. Тялото свършва рано. Но фазерът `LEAVE` пак се изпълнява на излизане. Той отпечатва `Cleanup`. Винаги можете да разчитате на това. Затова `LEAVE` е правилното място за освобождаване на ресурси. Той винаги се изпълнява, независимо как свършва блокът.

{% include nav.html %}
