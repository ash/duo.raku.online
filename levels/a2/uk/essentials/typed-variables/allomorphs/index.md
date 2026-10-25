---
title: Аломорфи
---

{% include menu.html %}

Подивіться на цю програму. Поки не запускайте її. Чи можете ви сказати, які вхідні значення її зламають? І на якому рядку?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Програма створює три скалярні змінні. Дві з них, `$i` і `$s`, — типізовані змінні. Тож `$i` може зберігати лише цілі числа. А `$s` може зберігати лише рядки.

`prompt` повертає значення. Його тип залежить від символів, які ми вводимо. Іноді вхідний рядок може бути цілим числом. Тоді результат має тип `IntStr`. Цей тип є _одночасно_ `Int` і `Str`. Тож ви можете присвоїти його змінній `Int`. Ви також можете присвоїти його змінній `Str`. Наприклад, ви вводите `1234`. Тоді програма не ламається.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Тип `IntStr` — це приклад _аломорфа_. Аломорф — це тип даних, який складається з двох інших типів. Ось ще кілька прикладів.

Тепер введіть рядок, який не може бути цілим числом. Програма ламається. Це стається, коли ми присвоюємо `$input` змінній `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Іноді вхідний рядок — це число, але не ціле. Зверніть увагу, що тоді ви теж отримуєте помилку. Контейнер для цілих чисел не може зберігати число з плаваючою комою. Раціональне число він теж не може зберігати. Тож ви отримуєте виняток:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Друге присвоєння, `$s = $input`, ніколи не ламається. Рядок може прийняти будь-які вхідні дані.

🦋 Ви можете знайти вихідний код цієї програми у файлі [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
