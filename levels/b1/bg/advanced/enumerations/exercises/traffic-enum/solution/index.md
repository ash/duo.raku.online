---
title: 'Solution: Светофар'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `my Light $current` е обикновена променлива и можете да я променяте. Единственото ограничение е, че тя трябва да пази `Light`. Когато присвоите следващата константа, светлината минава нататък. Всеки път числото следва името: `0`, `1`, `2`.

1. Изглежда, че `$current++` трябва да мине сам към следващата светлина. Но той се проваля с грешка при проверка на типа. `++` използва константата като обикновено число и връща `Int` (`red` става `1`). Но `Int` не отговаря на типа `Light`. Затова сменяте светлината, като присвоявате следващата константа, както по-горе.

1. Проверката на типа работи при всяко присвояване, не само при първото. `$current` приема `red`, `amber` или `green`. Нещо, което не е `Light`, дава грешка при проверка на типа. Това важи например за обикновено число или за низ.

{% include nav.html %}
