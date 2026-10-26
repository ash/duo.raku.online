---
title: 'Розв''язання: Абревіатура'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Вихідний код можна знайти у файлі [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Вивід

```
HTML
```

## Коментарі

1. `$phrase.words` повертає список слів. Для кожного слова цикл бере перший символ через `substr(0, 1)`. Потім він додає цей символ у кінець `$acronym`.

1. Коли всі перші літери зібрано, `uc` переводить результат у верхній регістр: `HTML`.

{% include nav.html %}
