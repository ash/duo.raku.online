---
title: 'Решение: Търсене или ненамерено'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Изход

```
not found
reason: no such key
```

## Коментари

1. `lookup('z')` извиква `fail`. Затова тя връща `Failure`. `Failure` е недефинирана стойност с грешка вътре.

1. Резултатът е недефиниран. Затова програмата отпечатва `not found`. Тя не се опитва да използва провалената стойност.

1. `Failure` все пак пази изключение вътре. Изключението казва какво се е объркало. `$r.exception` взема това изключение. Това също отбелязва провала като обработен. Затова той не води до грешка по-късно. После `.message` чете текста от `fail`. Този текст е `no such key`.

{% include nav.html %}
