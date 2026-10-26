---
title: Quoting constructs
---

{% include menu.html %}

In the Essentials part, you used [single and double quotes for strings](/essentials/strings). Raku has many more ways to quote strings. We call them _quoting constructs_. Single and double quotes are the two most common ones. Each construct does a different amount of work on the text. You choose exactly how much. At one end, it is “take every character as it is”. At the other end, it is “interpolate variables, escapes, and even code”.

This section shows the three base forms: `q`, `qq`, and `Q`. It also shows adverbs. Adverbs change how the base forms work. And it shows _heredocs_. They are for text with many lines.

{% include nav.html %}
