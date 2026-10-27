---
title: 'Решение: Кутия с размер'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Намерете програмата във файла [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Изход

```
size is 10
True
```

## Коментари

1. Ролята предоставя метода `describe`, а класът я компонира с `does Sized`. Методът има нужда от `self.size`, който класът `Box` предоставя. Така ролята и класът пасват един на друг и образуват целия обект.

1. `Box` изпълнява ролята, затова интелигентното съпоставяне `$b ~~ Sized` е `True`. Смята се, че обектът има всяка роля, която класът му компонира. Това ви помага да проверите какво може обектът, преди да извикате метод на роля.

{% include nav.html %}
