---
title: 'Quiz — Running programs'
---

{% include menu.html %}

Which function sends its command through the system **shell** and allows pipes and redirection?

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` passes a single string to the shell, which understands features like pipes. `run` starts a program directly, with separate arguments and no shell. This is safer, so `run` is the better default.

</div>

{% include nav.html %}
