---
title: 'Solution: Seen before?'
---

{% include menu.html %}

This is a classic task for a hash. The hash remembers which items came before. Before the loop, the program creates the hash `%seen`. In the loop, the user enters a word, `$word`. The program uses this word as a key of the hash.

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

The code `%seen{$word}++` adds 1 to the value. If the value does not exist yet, the code also creates it. Creating a value in this way is called _autovivification_. Note that it does not happen when you only _read_ the value. For example, it does not happen in the condition `if %seen{$word}`.

{% include nav.html %}
