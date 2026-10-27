---
title: Перевизначення методів
translations_gpt:
---

{% include menu.html %}

Дочірній клас успадковує методи від батьківського класу. Але він може мати й власну версію такого методу. Це називають _перевизначенням_. Ви викликаєте метод для об'єкта дочірнього класу. Тоді виконується версія дочірнього класу. Версія батьківського класу не виконується.

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

`Dog` і `Cat` обидва перевизначають `speak`. Метод `intro` вони успадковують від `Animal` і не змінюють його. Цей метод викликає `self.speak`. Цей виклик використовує власний `speak` об'єкта:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Тож той самий успадкований `intro` дає різні результати. Це тому, що кожен об'єкт має власний `speak`. Це одна з головних ідей об'єктно-орієнтованого програмування. Код спільний. Але для кожного виду об'єкта він працює по-різному.

{% include nav.html %}
