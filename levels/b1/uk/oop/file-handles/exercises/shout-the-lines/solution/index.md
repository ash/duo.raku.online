---
title: 'Розв''язання: Пронумеруйте рядки'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Вихідний код можна знайти у файлі [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Вивід

```
1: apple
2: banana
3: cherry
```

## Коментарі

1. `spurt` записує три слова у файл, із символами нового рядка між ними.

1. `.IO.lines` дає рядки один за одним, без символів нового рядка в кінці. Ми тримаємо лічильник `$n` і збільшуємо його на кожному проході. Тож кожен рядок виводиться разом зі своєю позицією у файлі.

{% include nav.html %}
