---
title: The solution of ’A native array‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 You can find the source code in the file [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Output

```
555
```

## Comments

1. The sized native type `uint8` goes before the `@` array. This declares an array where each element is a single unsigned byte. It takes little memory, which is good for binary data.

1. The wrap-around limit `0..255` is for each *element*, but not for their sum. `.sum` boxes the total into an ordinary `Int`. So `100 + 200 + 255` gives the full `555`.

{% include nav.html %}
