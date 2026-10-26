---
title: Cross, hyper, and negated meta-operators
---

{% include menu.html %}

Raku has more meta-operators, not only reduction and zip. Here you learn three of them.

## Cross — `X`

The cross meta-operator `X` takes two lists and makes pairs. Here, **every** element of one list goes with **every** element of the other. This is called the cartesian product:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Like zip, `X` can also take an operator. Then the operator works on each pair. `X~` joins each pair into a string. `X*` multiplies the two numbers:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip goes through two lists side by side. Cross puts them together in all possible ways.

## Hyper — `»…«`

A hyper meta-operator uses an operator on **each element** of a list. The operator stands between the arrows `»…«`. With ASCII characters only, you write `>>…<<`. With two lists, it works element by element, like zip. Sometimes one side has only one value. Then it uses this value with every element of the list:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

The two arrows can point in different directions. The direction matters when the lists have different lengths. If an arrow points **at** a list, Raku can repeat this list. Then it is as long as the other list. Here are the four combinations in ASCII, with `<<` and `>>`:

* `>>op<<` — Raku repeats no list. The lists must have the same length. If not, you get an error.
* `>>op>>` — Raku repeats the **right** list. Then it is as long as the left one.
* `<<op<<` — Raku repeats the **left** list. Then it is as long as the right one.
* `<<op>>` — Raku repeats the **shorter** list. Then it is as long as the longer one.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

There is also a form with only one operand. It calls a method on every element. `>>.uc` changes each string to capital letters:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

A hyper operation also tells Raku something more. Raku *may* do the work in parallel. Then several parts of the work run at the same time. Later, you will learn the similar `.hyper` method. It is in [the section about concurrent programming](/paradigms/hyper-race).

## Negated — `!`

Put `!` before a comparison operator. Then you get the opposite result. You already know `!=`, or “not equal”. It is just this meta-operator with `==`. Other operators give `True` or `False` too, like `eq` and `%%`. The meta-operator works with them in the same way:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

So `$a !op $b` is just a cleaner way to write `!($a op $b)`.

Raku does this on purpose. Some languages are small and simple on purpose, like Esperanto. Esperanto tries to have one regular way to say each thing. Raku is different. It happily gives you several ways. So Raku has the negated `!eq`. It also has a special `ne` operator. The two mean exactly the same:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
