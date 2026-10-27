---
title: 'Розв''язання: Пошук або не знайдено'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `lookup('z')` викликає `fail`, тож повертає невизначений `Failure`.

1. Результат невизначений, тож програма виводить `not found`. Вона не намагається використати невдале значення.

1. `Failure` усе одно несе виняток, який описує, що пішло не так. Ви дістаєте його через `$r.exception`. Це також позначає збій як оброблений, тож пізніше він не кине винятку. Потім `.message` читає текст, переданий до `fail`, тобто `no such key`.

{% include nav.html %}
