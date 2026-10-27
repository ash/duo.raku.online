---
title: 'Quiz — Running programs'
---

{% include menu.html %}

Which function sends its command through the system **shell**? This function lets you use pipes and redirection.

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` gives a single string to the shell. The shell understands features like pipes. `run` starts a program directly. It takes separate arguments and uses no shell. This is safer. So `run` is the better default choice.

</div>

{% include nav.html %}
