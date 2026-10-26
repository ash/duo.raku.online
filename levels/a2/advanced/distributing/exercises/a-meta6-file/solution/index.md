---
title: The solution of ’A META6 file‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `provides` links the name of the module to its file. The code of the module is in this file. In the name, `::` separates the parts. The directory path matches these parts.

1. `depends` lists the other distributions that this one needs. Here, it has only one item: `"JSON::Fast"`. Someone may install `Greet::Simple`. Then the tools install `JSON::Fast` first. An empty array means that the distribution needs no other distributions.

{% include nav.html %}
