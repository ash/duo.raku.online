---
title: Sized types and overflow
---

{% include menu.html %}

Raku has the plain `int`. It also has integers with a fixed number of bits. They are `int8`, `int16`, `int32`, and `int64`. Each of them has an unsigned partner: `uint8`, `uint16`, `uint32`, and `uint64`. Unsigned values are never negative. The number in the name tells how many bits the value takes.

A fixed size means a fixed range of values. An `int8` holds values from `-128` to `127`. A `uint8` holds values from `0` to `255`. The storage cannot grow. So when a value goes past the top, it wraps around. It comes back at the bottom. This is _overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Add one to the largest `int8`. You do not get `128`, because `128` does not fit. The value wraps around to the smallest value, `-128`. Unsigned types wrap around too:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

A normal `Int` is the opposite. It simply grows as big as needed. It never overflows. Sized native types are a deal. You accept a fixed range. In return, the storage is small, fast, and has no surprises. This deal is the whole point of sized native types.

Do you know the range of your data? Do you want fast and small storage? Then use a sized native type. For example, keep bytes of binary data in a `uint8` array. In normal arithmetic, numbers can grow without a limit. There, use `Int`.

{% include nav.html %}
