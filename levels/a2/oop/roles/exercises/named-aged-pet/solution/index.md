---
title: The solution of ’A named, aged pet‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
role Named {
    method label {
        'I am ' ~ self.name;
    }
}

role Aged {
    method status {
        self.age ~ ' years';
    }
}

class Pet does Named does Aged {
    has $.name;
    has $.age;
}

my $p = Pet.new(name => 'Rex', age => 3);
say $p.label;
say $p.status;
```

🦋 You can find the source code in the file [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Output

```
I am Rex
3 years
```

## Comments

1. `Pet` composes two roles at the same time. This means that it takes both roles into the class. So `Pet` gets two methods, `label` and `status`.

1. The method of each role uses an attribute, `name` or `age`. The class `Pet` gives these attributes.

{% include nav.html %}
