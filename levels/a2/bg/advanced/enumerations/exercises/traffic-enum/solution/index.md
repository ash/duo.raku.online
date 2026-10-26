---
title: 'Solution: Светофар'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Можете да намерите пълния код във файла [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Резултат

```
red is 0
amber is 1
green is 2
```

## Коментари

1. `my Light $current` е обикновена променлива. Можете да сменяте нейната стойност. Но тя може да пази само `Light`. Присвоете следващата константа и светлината минава нататък. Всеки път числото се сменя заедно с името: `0`, `1`, `2`.

1. Изглежда, че `$current++` минава сам към следващата светлина. Но той дава грешка при проверка на типа. `++` вижда константата само като нейното число. Той връща `Int`: `red` става `1`. Но `Int` не е `Light`. Затова, за да смените светлината, присвоете следващата константа, както по-горе.

1. Raku проверява типа при всяко присвояване, не само при първото. `$current` приема `red`, `amber` или `green`. Той не приема други стойности, като число или низ. Те не са `Light`. Такова присвояване дава грешка при проверка на типа.

{% include nav.html %}
