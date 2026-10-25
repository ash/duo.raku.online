---
title: 'Розв''язання: Значення e'
---

{% include menu.html %}

## Застереження

У Raku вже є стала `e`. Вона одразу дає відповідь на це завдання. Рішення нижче — лише для навчання.

## Код

У формулі є факторіал. Ми вже знаємо щонайменше два способи знайти факторіал. Інші способи будуть пізніше. Програма нижче має дві функції. Одна функція знаходить факторіал. Друга додає перші доданки формули.

Функція має працювати і без аргументів. Тоді цикл виконується задану кількість разів. Тому ми даємо параметру [значення за замовчуванням](/uk/essentials/functions/default-values): `sub e-approx($max = 100)`.

Подивіться на код. Обидві функції збирають свій результат схожим способом. Кожна має [`for` у кінці рядка](/uk/essentials/loops/postfix-for). Цей цикл проходить по [діапазону](/uk/essentials/ranges).

Ось рішення:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Знайдіть програму у файлі [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Вивід

Ось результати для 10 і 100 проходів циклу. Спробуйте також інші значення `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
