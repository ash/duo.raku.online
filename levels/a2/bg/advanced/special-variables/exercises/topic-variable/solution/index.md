---
title: 'Solution: Тематичната променлива'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Можете да намерите пълния код във файла [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Резултат

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Коментари

1. В цикъл `for` тематичната променлива `$_` получава всеки елемент, един по един. Така блокът се изпълнява три пъти. Първо `$_` е `'apple'`, после `'fig'`, после `'cherry'`.

1. В низа `$_` поставя текущата дума в текста. Извикването `.chars` дава дължината на думата. То е съкратено от `$_.chars`. И двете използват една и съща тема. Така числото винаги отговаря на думата на реда.

{% include nav.html %}
