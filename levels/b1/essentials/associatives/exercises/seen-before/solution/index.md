---
title: 'Solution: Seen before?'
---

{% include menu.html %}

This task is a classic example of using a hash to keep track of items. Before the loop, the program creates the hash `%seen`. Inside the loop, the entered word `$word` is used as a key of the hash.

## Code

Here is the solution:

```raku
my %seen;
loop {
    my $word = prompt 'Word: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Seen!' !! say "Seen %seen{$word} times!";
    }
    %seen{$word}++;
}
```

🦋 Find the program in the file [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Output

```console
$ raku exercises/associatives/seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

## Comment

The construct `%seen{$word}++` does not just add 1 to the value. It also creates the value if it did not exist before. Creating a value in this way is called _autovivification_. Note that only _reading_ the value, as in the condition `if %seen{$word}`, does not create it.

{% include nav.html %}
