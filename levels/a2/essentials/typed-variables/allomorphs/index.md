---
title: Allomorphs
---

{% include menu.html %}

Look at this program. Do not run it yet. Can you say which input values break it? And at which line?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

The program creates three scalar variables. Two of them, `$i` and `$s`, are typed variables. So `$i` can only keep integers. And `$s` can only keep strings.

`prompt` returns a value. Its type depends on the characters that we type. Sometimes the input string can be an integer number. Then the result has the type `IntStr`. This type is _both_ `Int` and `Str`. So you can assign it to an `Int` variable. You can also assign it to a `Str` variable. For example, you enter `1234`. Then the program does not break.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

The `IntStr` type is an example of an _allomorph_. An allomorph is a data type made of two other types. Here are a few more examples.

Now enter a string that cannot be an integer. The program breaks. This happens when we assign `$input` to `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Sometimes the input string is a number, but not an integer. Note that you get an error then too. An integer container cannot keep a floating-point number. It cannot keep a rational number either. So you get an exception:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

The second assignment, `$s = $input`, never breaks. A string can take any input.

🦋 You can find the source code of this program in the file [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
