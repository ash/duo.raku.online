---
title: 'Solution: Digital stairs'
---

{% include menu.html %}

The program uses two loops and two ranges.

## Code

Here is one possible solution:

```raku
my $size = prompt 'Enter the size: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Find the program in the file [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Output

Run the program and enter the size:

```console
$ raku exercises/loops/digital-stairs.raku
Enter the size: 7
1
12
123
1234
12345
123456
1234567
```

## Comment

Look at how the program prints the current digit:

```raku
.print for 1..$n;
```

Like `say`, you can call `print` as a method. Here, it is called on the [topic variable](/essentials/loops/topic) `$_`.

{% include nav.html %}
