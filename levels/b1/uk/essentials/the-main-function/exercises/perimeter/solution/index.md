---
title: 'Solution: Периметр прямокутника'
---

{% include menu.html %}

Ця програма повинна вміти приймати один або два аргументи командного рядка. Рішення показує новий трюк. Значення за замовчуванням другої змінної — це значення першої: `sub MAIN($a, $b = $a)`. Отже, замість двох мультифункцій у нас є одна загальна функція. Якщо фігура — квадрат, ця функція задає розмір другої сторони.

## Код

Ось розв'язок:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'square' !! 'rectangle';
    say "The perimeter of a $shape is $perimeter.";
}
```

🦋 Знайдіть програму у файлі [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Вивід

Спробуйте різні вхідні значення, щоб перевірити як квадрати, так і прямокутники.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

Зверніть увагу, що є третій випадок, який теж треба перевірити. З двома однаковими числами програма все одно повинна зрозуміти, що це квадрат:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
