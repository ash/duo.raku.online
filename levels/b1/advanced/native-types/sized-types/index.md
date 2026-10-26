---
title: Sized types and overflow
---

{% include menu.html %}

Besides the plain `int`, Raku has integers with a fixed size in bits. These are `int8`, `int16`, `int32`, `int64`, and their unsigned partners `uint8`, `uint16`, `uint32`, `uint64`. The number shows how many bits the value takes.

When the width is fixed, the range is fixed too. An `int8` holds values from `-128` to `127`, and a `uint8` from `0` to `255`. The storage cannot grow, so going past the top wraps around to the bottom. This is called _overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

If you add one to the largest `int8`, you do not get `128`. That number would not fit. Instead, it wraps around to the smallest value, `-128`. Unsigned types wrap around too:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

A normal `Int` is the opposite. It simply grows as large as needed and never overflows. This deal is the whole point of sized native types. You accept a fixed range. In return, you get storage that is predictable, small and fast.

Do you know the range of your data, and do you want efficiency? Then use a sized native type. For example, keep bytes of binary data in a `uint8` array. For ordinary arithmetic, where numbers may grow without limit, stay with `Int`.

{% include nav.html %}
