---
title: 'Quiz: A backslash in the output'
---

{% include menu.html %}

Look at these strings. Imagine that you print them. Which outputs have exactly one backslash `\`? Mark these strings.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | The output is `//\`
1 | &apos;//\\\\&apos; | One backslash escapes the other here: `//\`.
1 | &apos;\&quot;&apos; | No escaping here, the string appears as is: `\"`.

{% include quiz.html %}

## Comments

Look at the quotes first. They are the most important thing here. The quotes decide what happens to the characters after a `\`.

{% include nav.html %}
