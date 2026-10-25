---
title: Quiz 2 — Default values
---

{% include menu.html %}

Look at this program.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

You run the program like this. What does it print?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enter the output values: ␣␣␣ and ␣␣␣

## 2

Now you run the same program like this:

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
