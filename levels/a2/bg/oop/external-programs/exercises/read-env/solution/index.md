---
title: 'Решение: Подайте променлива на дъщерна програма'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `spurt` създава `notes.txt` с три реда. После записваме името на файла в `%*ENV<NOTES>`. Така името на файла вече е в средата. Всяка дъщерна програма получава тази среда.

1. Командата на `shell` получава тази среда. Тя заменя `$NOTES` с `notes.txt`. После подава файла на `wc -l`. `wc -l` преброява редовете на файла. Пренасочването `< "$NOTES"` е важно. Заради него изходът е само числото `3`. Улавяме това число с `:out` и го подрязваме.

1. Накрая разчистваме в Raku с `unlink`. За това не ни трябва обвивка. Изтриването на файл е проста операция на файловата система. Затова няма причина да стартираме още един процес за нея. Процесът е работеща програма.

{% include nav.html %}
