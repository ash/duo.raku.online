---
title: Перевизначення методів
translations_gpt:
---

{% include menu.html %}

Дочірній клас може мати власну версію методу, який він успадковує. Це називають _перевизначенням_. Для об'єкта дочірнього класу виклик методу виконує версію дочірнього класу. Версія батьківського класу не виконується.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` і `Cat` кожен перевизначає `speak`. Метод `intro` приходить від `Animal` без змін. Він викликає `self.speak`, і цей виклик використовує той `speak`, який належить справжньому об'єктові:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Тож той самий успадкований `intro` дає різні результати, бо кожен об'єкт має власний `speak`. Це одна з центральних ідей об'єктно-орієнтованого програмування. Спільний код змінює свою поведінку під кожен вид об'єкта.

{% include nav.html %}
