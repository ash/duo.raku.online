---
title: 'Розв''язання: Передайте змінну дитині'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Вихідний код можна знайти у файлі [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Вивід

```
3
```

## Коментарі

1. `spurt` створює `notes.txt` із трьома рядками. Потім ми записуємо його ім'я в `%*ENV<NOTES>`. Так ім'я файлу потрапляє в середовище, яке отримує кожна дочірня програма.

1. Команда `shell` отримує це середовище й замінює `$NOTES` на `notes.txt`. Потім вона передає файл у `wc -l`, який рахує його рядки. Через перенаправлення `< "$NOTES"` вивід — це лише число `3`. Ми перехоплюємо його через `:out` і обрізаємо.

1. Наостанок прибирання відбувається знову в Raku через `unlink`, і оболонка не потрібна. Видалення файлу — це проста операція файлової системи. Немає причини запускати заради неї ще один процес.

{% include nav.html %}
