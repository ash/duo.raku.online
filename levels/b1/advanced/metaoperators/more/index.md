---
title: Cross, hyper, and negated meta-operators
---

{% include menu.html %}

Apart from reduction and zip, Raku has several more meta-operators. Three of them are useful to know at this point.

## Cross — `X`

The cross meta-operator `X` takes two lists. It pairs **every** element of one with **every** element of the other. This is called the cartesian product:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Like zip, it can wrap an operator, which then works on each pair. `X~` joins each pair into a string, and `X*` multiplies the values:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip goes through two lists side by side, while cross combines them in all possible ways.

## Hyper — `»…«`

A hyper meta-operator applies an operator to **each element** of a list. The operator goes inside the pointy brackets `»…«`, or the ASCII form `>>…<<`. With two lists, it works element by element, like zip. With a single value on one side, it stretches that value over the whole list:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

The two arrows do not have to point the same way. Their direction decides what happens when the lists have different lengths. If an arrow points **at** a list, that list may repeat to match the other. Here are the four combinations, written in ASCII with `<<` and `>>`:

* `>>op<<` — no list is repeated, so the lists must already have the same length, or there is an error;
* `>>op>>` — the **right** list repeats to match the left one;
* `<<op<<` — the **left** list repeats to match the right one;
* `<<op>>` — the **shorter** list repeats to match the longer one.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

There is also a unary form, with only one operand. It calls a method on every element. `>>.uc` turns each string into upper case:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hyper operations also show that the work *may* be done in parallel. You will see the related `.hyper` method later, in [the section on concurrent programming](/paradigms/hyper-race).

## Negated — `!`

If you put `!` before a comparison operator, you get the opposite result. The familiar `!=` (not equal) is exactly this meta-operator used with `==`. The same works for other Boolean operators, such as `eq` and `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

In short, `$a !op $b` is just a neater way to write `!($a op $b)`.

This is on purpose. Some languages, such as Esperanto, are small and simple on purpose. They try to have one regular way to say each thing. Raku is different and happily gives you several ways. So the negated `!eq` exists right next to the special `ne` operator. The two mean exactly the same:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
