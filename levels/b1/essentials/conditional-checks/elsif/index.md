---
title: Using elsif
---

{% include menu.html %}

So far, we have learned `if` and `else`. But what if you want to make a chain of tests? Raku has at least two ways to do that. Actually, there are even more.

One way is to use a chain of `if`, `elsif`, and `else` blocks. Note how `elsif` is spelled. It is not `elseif`, and it is not `else if`.

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

This program has three branches and three tests, one after another. As soon as one of the conditions is `True`, the matching code block runs. If none of the checks is `True`, the `else` block runs.

Here are a few test runs of the program. Each block runs in one of them:

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

Another way is to use the pair [`given` and `when`](/advanced/given-when), which we will learn later.

{% include nav.html %}
