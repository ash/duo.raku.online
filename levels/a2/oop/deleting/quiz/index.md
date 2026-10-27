---
title: 'Quiz — Deleting files'
---

{% include menu.html %}

What does this program print?

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

`rmdir` removes only an **empty** directory. Here, `data` still has `x.txt` in it. So `rmdir` removes nothing. The directory stays in its place. That is why `.e` still gives `True`. How can you delete the directory? First, remove everything in it, for example with `.unlink for 'data'.IO.dir`. Then call `rmdir`.

</div>

{% include nav.html %}
