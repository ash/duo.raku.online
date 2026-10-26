---
title: The solution of ’A native array‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. Write the sized native type `uint8` before the `@` array. Then Raku keeps each element in one byte. This byte is unsigned: it has no minus sign. Such an array takes little memory. This is good for binary data.

1. Each *element* has a limit, `0..255`. Past this limit, values wrap around. But the limit is not for the sum of the elements. `.sum` puts the total into a normal `Int`. So `100 + 200 + 255` gives the full `555`.

{% include nav.html %}
