---
title: 'Solution: Рекурсивний факторіал'
---

{% include menu.html %}

Факторіал — дуже корисна вправа. Ви можете розв'язати її багатьма різними способами. Цього разу ми використовуємо рекурсію. Це означає, що функція викликає сама себе.

## Код 1

Ось код рішення. Зверніть увагу: ви маєте перевіряти умову. Ця умова зупиняє рекурсію. Без неї рекурсія триває вічно.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Знайдіть програму у файлі [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Код 2

У такому коді постфіксна форма `if` часто краща. Тут `if` стоїть після `return`. Тож функція повертає результат одразу. Код стає чистішим. У ньому менше відступів і пунктуації.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Знайдіть оновлену програму у файлі [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Приклад

Запустіть програму і перевірте результат. Ось цікавий факт. У шести тижнях рівно _10!_ секунд.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
