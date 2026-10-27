---
title: 'Решение: Подайте променлива на дъщерна програма'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Намерете програмата във файла [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Изход

```
3
```

## Коментари

1. `spurt` създава `notes.txt` с три реда. После записваме името му в `%*ENV<NOTES>`. Така името на файла влиза в средата, която всяка дъщерна програма получава.

1. Командата на `shell` получава тази среда и заменя `$NOTES` с `notes.txt`. После подава файла на `wc -l`, който преброява редовете му. Заради пренасочването `< "$NOTES"` изходът е само числото `3`. Улавяме го с `:out` и го подрязваме.

1. Накрая разчистването става обратно в Raku с `unlink`, без нужда от обвивка. Изтриването на файл е проста операция на файловата система. Няма причина да се стартира още един процес за нея.

{% include nav.html %}
