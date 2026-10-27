---
title: 'Решение: Търсене или ненамерено'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `lookup('z')` извиква `fail`, така че връща недефиниран `Failure`.

1. Резултатът е недефиниран, така че програмата отпечатва `not found`. Тя не се опитва да използва провалилата се стойност.

1. `Failure` все пак носи изключението, което описва какво се е объркало. Получавате го с `$r.exception`. Това също отбелязва провала като обработен, така че той няма да хвърли изключение по-късно. После `.message` чете текста, подаден на `fail`: `no such key`.

{% include nav.html %}
