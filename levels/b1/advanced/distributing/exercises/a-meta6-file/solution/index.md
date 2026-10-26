---
title: The solution of ’A META6 file‘
---

{% include menu.html %}

Here is one possible solution.

## Code

`META6.json`:

```json
{
    "name": "Greet::Simple",
    "version": "0.0.1",
    "description": "A simple greeting module",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [ "JSON::Fast" ],
    "provides": {
        "Greet::Simple": "lib/Greet/Simple.rakumod"
    }
}
```

🦋 You can find the source code in the file [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Comments

1. `provides` links the module name to the file that contains its code. The directory path matches the parts of the name between the `::`.

1. `depends` lists the other distributions that this one needs. Here, there is only one entry, `"JSON::Fast"`. When someone installs `Greet::Simple`, the tools will get `JSON::Fast` first. An empty array would mean that there are no dependencies.

{% include nav.html %}
