---
title: Running external programs
---

{% include menu.html %}

A program does not work alone. It often runs other programs and reads what they print. It also looks at its environment. The environment is a set of values. A program gets them when it starts. Raku gives you direct and easy access to all of this.

This section is about `run` and `shell`. With them, you start external commands. These are other programs. You also learn to capture what these commands print. Then your program can use their output. At the end, you meet the `%*ENV` hash. It holds the environment variables.

{% include nav.html %}
