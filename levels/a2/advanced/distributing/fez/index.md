---
title: Publishing with fez
---

{% include menu.html %}

The last topic showed `fez`. With `fez`, you upload a distribution to the Raku ecosystem. You do not have to use `fez`. There are other ways to publish. But most people use `fez`. And it does more than upload. It can also create a new distribution for you. It can take care of your author account too. Install `fez` with `zef`:

```
zef install fez
```

## Creating a new distribution

You can make the `META6.json` and the directories `lib/` and `t/` yourself. But `fez` can make them for you:

```
fez init My::Greeting
```

`fez init` creates the start of a new distribution. This is a project directory. It already has a `META6.json` and the standard layout. So you can start writing at once. The code goes under `lib/`, and the tests go under `t/`. You do not need to prepare the `META6.json` yourself.

## Registering and logging in

To publish, you need an account in the ecosystem. You create the account only once, with `fez register`. It asks for a username, an email and a password. Then you log in with `fez login`. It saves your key. With this key, the next commands know who you are:

```
fez register
fez login
```

Your username is important. The `META6.json` of a distribution must have an `auth` field. Its value is `zef:<username>`. In this way, the ecosystem knows that the upload is really yours.

## Uploading

You have an account, and the distribution is ready. Now `fez upload` packs the current directory and sends it:

```
fez upload
```

After that, anyone can install it by its name with `zef install My::Greeting`. You can upload each version only once. So, before an update, make the `version` in `META6.json` higher.

## More useful commands

You will also use these `fez` commands:

* `fez review` — look for possible problems in a distribution before the upload;
* `fez list` — show the distributions that you have already published;
* `fez refresh` — make `META6.json` again from the files that are on the disk now.

> All these commands need an installed `fez` and the network. Everything after `init` also needs an ecosystem account.

{% include nav.html %}
