---
title: Quiz — Unicode digits and numbers
---

{% include menu.html %}

Look at the digits below. Some of them make integers. Raku accepts these as values of the `Int` type. Which ones are they? Try to find out.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | This is considered a number, not a single digit.
0 | ⓵⓶⓷⓸⓹ | So you cannot combine them in such a way to get `12345`.
1 | ❷
0 | ❸❹❺
1 | ㊷ | A single Unicode character named `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | But the two numbers are not a number.
1 | ㊄ | Circled Chinese 5 and it is a number `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | While this means 5, the character is neither a digit nor a number.
0 | 一二三四五

{% include quiz.html %}

## Comments

You can start with the program below. Play with it and learn more about these digits. Some lines start with `#`, so they are comments. Remove the `#` and see if the program compiles.

```raku
my $x;
$x =  3;
say $x; say $x.WHAT;

$x =  12345;
$x =  ⓷;
# $x =  ⓵⓶⓷⓸⓹;

$x =  ❷;
# $x =  ❸❹❺;

$x =  ⒌;
# $x =  ⒊⒋⒌;

# $x =  ㊀㊁㊂㊃㊄;
$x =  ㊄;
say $x; say $x.WHAT;

# $x =  五;
# $x =  一二三四五;

$x = ㊷;
say $x;
```

🦋 Take the code from GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
