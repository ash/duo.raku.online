---
title: Adding methods at runtime
---

{% include menu.html %}

The MOP is not only for looking inside types. It can also **change** a type while the program runs. The meta-method `.^add_method` adds a new method to a class:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

The class `Empty` has no methods at all. Then `Empty.^add_method('greet', …)` adds a method to it. Its name is `greet`. The method itself is an anonymous `method { … }`. Anonymous means that it has no name. After that, you can call `.greet` on every `Empty` object. It works as if you wrote the method in the class.

This is real meta-programming. Meta-programming means code that works with code. Here, we tell the metaobject of `Empty` to grow a new method. The same protocol is behind things that you already use. Here is the idea. You write `class`, `role`, `has`, or `method`. Then the compiler builds your type for you. It uses MOP methods like `.^add_method` and `.^add_attribute`.

We say “the idea” for a reason. This is a model of the language. It is not a promise about any one compiler. The object system is *defined* through the MOP. An implementation is a compiler for Raku. Does it really send every declaration through these meta-methods? And can you see this? Each implementation decides that for itself. You can also *call* these meta-methods yourself. For the same reason, the result depends on the implementation. Compilers can give you different meta-methods. These methods can also work in different ways. Code can use `.^add_method` and similar methods. Such code may not run the same way on every Raku.

You can add methods while the program runs. This is a powerful tool. But you rarely need it. Most programs never use it. But it makes the object system of Raku open. The rules of classes are written with the MOP too. So you can add to these rules. For everyday code, you need another part of the MOP. You saw it in the previous topic. These are the meta-methods that look inside types.

{% include nav.html %}
