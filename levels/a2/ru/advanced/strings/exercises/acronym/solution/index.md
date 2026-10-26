---
title: 'Решение: Акроним'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Исходный код можно найти в файле [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Вывод

```
HTML
```

## Комментарии

1. `$phrase.words` даёт список слов. Цикл берёт первый символ каждого слова с помощью `substr(0, 1)`. Он добавляет этот символ в конец `$acronym`.

1. В конце все первые буквы лежат в `$acronym`. Тогда `uc` делает все буквы результата заглавными: `HTML`.

{% include nav.html %}
