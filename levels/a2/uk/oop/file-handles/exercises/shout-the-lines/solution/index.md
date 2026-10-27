---
title: 'Розв''язання: Пронумеруйте рядки'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `spurt` записує три слова у файл. Символи нового рядка розділяють слова.

1. `.IO.lines` дає рядки один за одним. У кінці рядків немає символу нового рядка. Ми тримаємо лічильник `$n`. Кожен прохід циклу додає до нього 1. Тож програма виводить кожен рядок разом із його місцем у файлі.

{% include nav.html %}
