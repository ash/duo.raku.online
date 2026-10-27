---
title: 'Розв''язання: Пошук або не знайдено'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Вихідний код можна знайти у файлі [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Вивід

```
not found
reason: no such key
```

## Коментарі

1. `lookup('z')` викликає `fail`. Тож вона повертає `Failure`. `Failure` — це невизначене значення з помилкою всередині.

1. Результат невизначений. Тож програма виводить `not found`. Вона не намагається використати невдале значення.

1. `Failure` усе одно зберігає всередині виняток. Виняток каже, що пішло не так. `$r.exception` дістає цей виняток. Це також позначає збій як оброблений. Тож пізніше він не спричинить помилки. Потім `.message` читає текст із `fail`. Цей текст — `no such key`.

{% include nav.html %}
