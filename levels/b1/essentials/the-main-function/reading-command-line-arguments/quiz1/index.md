---
title: Quiz — Reading command-line arguments in the MAIN function
---

{% include menu.html %}

Here is the program:

```raku
sub MAIN($a) {
    say $a;
}
```

## 1

What does the program print if you run it like this?

```console
$ raku t.raku 123
```

{:.quiz-code .nocode}
123 | Enter the expected output: ␣␣␣␣␣␣␣

## 2

What does it print now?

```console
$ raku t.raku "123 456"
```

{:.quiz-code .nocode}
123␣456 | Enter the expected output: ␣␣␣␣␣␣␣

{% include quiz.html %}

{% include nav.html %}
