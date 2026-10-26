---
title: 'Solution: Първи тест'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Можете да намерите пълния код във файла [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Резултат

```
ok 1 - Raku has four letters
1..1
```

## Коментари

1. Условието `'Raku'.chars == 4` е вярно. Затова `ok` минава.

1. `done-testing` отпечатва реда с плана `1..1`. Той казва, че се е изпълнил един тест.

{% include nav.html %}
