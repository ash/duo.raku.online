---
title: Allomorphs
---

{% include menu.html %}

Look at the following program. Before you run it, try to guess. Which input values would break it, and at which line?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

The program creates three scalar variables here. Two of them, `$i` and `$s`, are typed variables. This means that `$i` can only store integers, and `$s` can only store strings.

The type that `prompt` returns depends on the characters we typed. If the input string can be an integer, the result has the `IntStr` type. This type is _both_ `Int` and `Str`. So you can assign it to an `Int` variable or to a `Str` variable. For example, if you enter `1234`, the program does not break.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

The `IntStr` type is an example of what is called an _allomorph_. This is a data type that combines two other types. Here are a few more examples.

If you enter a string that cannot be an integer, the program breaks. This happens when we assign `$input` to `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Note that you also get an error for a number that is not an integer. An integer container cannot store a floating-point or a rational number. So Raku throws an exception:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

The second assignment, `$s = $input`, will never break, because a string can take any input.

🦋 You can find the source code of this program in the file [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
