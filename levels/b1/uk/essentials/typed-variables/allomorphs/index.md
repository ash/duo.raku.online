---
title: Аломорфи
---

{% include menu.html %}

Подивіться на таку програму. Перш ніж запустити її, спробуйте вгадати. Які вхідні значення її зламають і на якому рядку?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Тут програма створює три скалярні змінні. Дві з них, `$i` і `$s`, є типізованими змінними. Це означає, що `$i` може зберігати лише цілі числа, а `$s` може зберігати лише рядки.

Тип, який повертає `prompt`, залежить від символів, які ми ввели. Якщо вхідний рядок може бути цілим числом, результат має тип `IntStr`. Цей тип є _одночасно_ `Int` і `Str`. Тож його можна присвоїти змінній `Int` або змінній `Str`. Наприклад, якщо ви введете `1234`, програма не зламається.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Тип `IntStr` — це приклад так званого _аломорфа_. Це тип даних, який поєднує два інші типи. Ось ще кілька прикладів.

Якщо ви введете рядок, який не може бути цілим числом, програма зламається. Це стається, коли ми присвоюємо `$input` змінній `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Зверніть увагу, що ви також отримаєте помилку для числа, яке не є цілим. Контейнер для цілих чисел не може зберігати число з плаваючою комою або раціональне число. Тож Raku видає виняток:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Друге присвоєння, `$s = $input`, ніколи не зламається, тому що рядок може прийняти будь-які вхідні дані.

🦋 Ви можете знайти вихідний код цієї програми у файлі [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
