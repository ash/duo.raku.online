---
title: Quiz 2 — Default values
---

{% include menu.html %}

Take a look at this program.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

What does the program print if you run it like this?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enter the output values: ␣␣␣ and ␣␣␣

## 2

Now you run the same program in this way:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Enter the output values: ␣␣␣ and ␣␣␣

## 3

Finally, this command:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Enter the output values: ␣␣␣ and ␣␣␣

{% include quiz.html %}

{% include nav.html %}
