---
title: 'Solution: Периметр прямокутника'
---

{% include menu.html %}

Ця програма має працювати з одним або двома аргументами командного рядка. Рішення показує новий трюк. Друга змінна має значення за замовчуванням. Це значення першої змінної: `sub MAIN($a, $b = $a)`. Тому ми не створюємо дві мультифункції. Натомість у нас є одна загальна функція. Для квадрата ця функція задає розмір другої сторони.

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

Спробуйте різні вхідні значення. Перевірте і квадрати, і прямокутники.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

Є ще й третій випадок. Його теж треба перевірити. Передайте два однакові числа. Програма все одно має побачити, що це квадрат:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
