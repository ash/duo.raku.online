---
title: 'Quiz — Deleting files'
---

{% include menu.html %}

What does the following program print?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | an error
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` removes only an **empty** directory. Here, `data` still contains `x.txt`, so `rmdir` removes nothing. The directory stays where it is, and `.e` still gives `True`. To delete the directory, you would first remove its contents, for example with `.unlink for 'data'.IO.dir`. Then you would call `rmdir`.

</div>

{% include nav.html %}
