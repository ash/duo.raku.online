---
title: 'Розв''язання: Всеїдні іменовані аргументи'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Вихідний код можна знайти у файлі [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Вивід

```
Anna: colour=red, size=5
```

## Коментарі

1. Спочатку сталий позиційний параметр `$name` отримує своє значення. Потім всеїдний `*%opts` збирає всі інші іменовані аргументи. Він кладе їх у хеш.

1. `%opts.sort` сортує пари за ключем. Тож вивід завжди однаковий: `colour` іде перед `size`. `.map` робить з кожної пари рядок `key=value`. Для цього він використовує `.key` і `.value`. Потім `.join(', ')` з'єднує рядки разом.

1. Останній рядок має всередині значення `$name` і `$details`. Ми побудували `$details` раніше. Результат — `Anna: colour=red, size=5`.

{% include nav.html %}
