---
title: Running external programs
---

{% include menu.html %}

Programs do not work alone. They often need to run other programs and read their output. They also need to check the environment in which they started. Raku gives you direct and easy access to all of this.

This section covers `run` and `shell`, which start external commands. It also shows how to capture what those commands print. Finally, it covers the `%*ENV` hash, which holds the environment variables.

{% include nav.html %}
