---
title: 'Решение: Кутия с размер'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Ролята дава метода `describe`. Класът компонира ролята с `does Sized`. Това значи, че той взема ролята в себе си. Методът има нужда от `self.size`. Класът `Box` дава `size`. Ролята и класът пасват един на друг. Заедно те правят целия обект.

1. `Box` изпълнява ролята. Затова интелигентното съпоставяне `$b ~~ Sized` е `True`. Обектът има всяка роля, която класът му компонира. Raku знае това. Това е полезно. Можете да проверите какво може обектът. Направете това, преди да извикате метод на роля.

{% include nav.html %}
