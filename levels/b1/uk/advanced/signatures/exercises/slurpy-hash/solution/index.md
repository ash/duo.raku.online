---
title: 'Розв''язання: Всеїдні іменовані аргументи'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Сталий позиційний параметр `$name` отримує своє значення першим. Потім всеїдний `*%opts` збирає всі іменовані аргументи, що залишилися, у хеш.

1. `%opts.sort` впорядковує пари за ключем, тож вивід завжди однаковий: `colour` іде перед `size`. `.map` перетворює кожну пару на рядок `key=value` за допомогою `.key` і `.value`. Потім `.join(', ')` з'єднує рядки разом.

1. Підсумковий рядок містить значення `$name` і готового `$details`. Це дає `Anna: colour=red, size=5`.

{% include nav.html %}
