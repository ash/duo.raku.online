---
title: 'Solution: Рекурсивний факторіал'
---

{% include menu.html %}

Факторіал — дуже корисна вправа, бо є багато способів її розв'язати. Цього разу ми використовуємо рекурсію, а це означає, що функція викликає сама себе.

## Код 1

Ось код рішення. Зверніть увагу, що потрібно перевіряти умову, щоб зупинити рекурсію. Інакше вона триватиме вічно.

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

У такому коді постфіксна форма `if` часто краща. Вона дає змогу одразу повернутися з функції. Це робить код чистішим і прибирає багато відступів і пунктуації.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Знайдіть оновлену програму у файлі [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Приклад

Запустіть програму та перевірте результат. До речі, чи знали ви, що в шести тижнях рівно _10!_ секунд?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
