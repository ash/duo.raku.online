---
title: Using elsif
---

{% include menu.html %}

Now you know `if` and `else`. But what if you need many tests, one after another? Raku has at least two ways for this. In fact, it has even more.

One way is a chain of blocks: `if`, `elsif`, and `else`. Look at how we write `elsif`. It is not `elseif`. It is not `else if` either.

```raku
my $x = prompt 'Enter the number: ';
if $x > 100 {
    say "$x is bigger than 100.";
}
elsif $x > 50 {
    say "$x is bigger than 50.";
}
elsif $x > 25 {
    say "$x is bigger than 25.";
}
else {
    say "$x is 25 or smaller.";
}
```

This program has three branches. It has three tests, one after another. As soon as one condition is `True`, Raku runs its code block. If no test is `True`, Raku runs the `else` block.

Here are a few test runs of the program. Together, they use all the blocks:

```console
$ raku t.raku
Enter the number: 120
120 is bigger than 100.

$ raku t.raku
Enter the number: 75      
75 is bigger than 50.

$ raku t.raku
Enter the number: 30
30 is bigger than 25.

$ raku t.raku
Enter the number: 10
10 is 25 or smaller.
```

Another way is the pair [`given` and `when`](/advanced/given-when). We learn it later.

{% include nav.html %}
