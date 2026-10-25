---
title: '`if` en `unless` als zinsmodificatoren'
---

{% include menu.html %}

Soms hangt een eenvoudige instructie af van een voorwaarde. Raku heeft een heel makkelijke manier om dit te schrijven. Je hebt geen apart codeblok nodig. Zet gewoon `if` of `unless` direct na de instructie. In Raku heten deze _statement modifiers_.

```raku
say 'Good afternoon' if $hours > 12;

say 'All systems work' unless $broken;
```

{% include nav.html %}
