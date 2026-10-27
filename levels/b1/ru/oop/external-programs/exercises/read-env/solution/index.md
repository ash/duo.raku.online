---
title: 'Решение: Передайте переменную дочернему процессу'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Исходный код можно найти в файле [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Вывод

```
3
```

## Комментарии

1. `spurt` создаёт `notes.txt` с тремя строками. Затем мы присваиваем `%*ENV<NOTES>` его имя. Так имя файла попадает в окружение, которое получает каждая дочерняя программа.

1. Команда `shell` получает это окружение и заменяет `$NOTES` на `notes.txt`. Затем она отправляет файл в `wc -l`, который считает его строки. Из-за перенаправления `< "$NOTES"` в выводе только число `3`. Мы перехватываем его через `:out` и обрезаем.

1. Наконец, уборка снова происходит в Raku, через `unlink`, и оболочка не нужна. Удаление файла — это простая операция файловой системы. Нет причин запускать для неё ещё один процесс.

{% include nav.html %}
