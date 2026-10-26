---
title: The solution of ’Bulk pricing‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 You can find the source code in the file [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Output

```
normal price
bulk price
```

## Comments

1. The first candidate has a `where` clause. It accepts only quantities of 10 or more. So the call `price(25)` goes to this candidate.

1. The second candidate has no condition. It takes all other calls. So `price(3)` goes there.

{% include nav.html %}
