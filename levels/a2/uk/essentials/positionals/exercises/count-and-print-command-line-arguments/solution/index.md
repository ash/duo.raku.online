---
title: 'Solution: Підрахунок і друк аргументів командного рядка'
---

{% include menu.html %}

Для цієї програми добре підходить цикл `for`.

## Код

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Знайдіть програму у файлі [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Вивід

Запустіть програму. Перевірте, що вона виводить аргументи та номери рядків:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Обговорення

Ця програма використовує кілька корисних трюків. По-перше, цикл `for` проходить по [діапазону, створеному з `^`](/uk/essentials/ranges/excluding-endpoints). Діапазон починається з 0. Він іде до значення `@*ARGS`. Але це останнє значення не входить у діапазон. Тут `@*ARGS` [дає](/uk/essentials/positionals/arrays#size) довжину масиву.

Перший елемент масиву має індекс `0`. Але в завданні потрібні номери рядків з `1`. Тож ми додаємо 1 до індексу. Програма робить це [у блоці коду](/uk/essentials/strings/code-interpolation) всередині рядка: `"{$n + 1} ..."`.

{% include nav.html %}
