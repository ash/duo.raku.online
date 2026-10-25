---
title: 'Solution: Преобразуване на потребителски вход към число'
---

{% include menu.html %}

Програмата може да е много проста:

## Код

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Можете да намерите изходния код във файла [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Пример

Стартирайте я и въведете цяло число. То може да е положително или отрицателно:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Коментари

Вече [видяхме](/bg/essentials/typed-variables/allomorphs), че `prompt` връща стойност от тип `IntStr`. Можете да присвоите тази стойност на променлива от тип `Int`. Не е нужно да я преобразувате.

Но внимавайте. Понякога въвеждате низ, който Raku не може да преобразува в цяло число. Тогава програмата спира с изключение.

{% include nav.html %}
