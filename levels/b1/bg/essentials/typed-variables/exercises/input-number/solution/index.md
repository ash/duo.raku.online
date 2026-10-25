---
title: 'Solution: Преобразуване на потребителски вход към число'
---

{% include menu.html %}

Програмата може да бъде толкова проста:

## Код

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Можете да намерите изходния код във файла [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Пример

Стартирайте я и въведете цяло число, което може да е положително или отрицателно:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Коментари

Както [видяхме](/bg/essentials/typed-variables/allomorphs), тук `prompt` връща стойност от тип `IntStr`. Можете да я присвоите на променлива от тип `Int` без никакво преобразуване.

Обърнете внимание обаче, че някои низове не могат да бъдат преобразувани в цяло число. Ако въведете такъв низ, програмата спира с изключение.

{% include nav.html %}
