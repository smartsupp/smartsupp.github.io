---
title: "Visitor"
subtitle: "Set basic visitor info"
---

## name

You can set visitor's name.

```js
<script>
  smartsupp('name', 'Username');
</script>
```

## email

You can set visitor's email.

```js
<script>
  smartsupp('email', 'useremail@example.com');
</script>
```

## status

Mark visitor as active or idle. This is helpful in non-refresh application when you want setup activity manually.

```js
<script>
  // mark visitor as active
  smartsupp('status', 'active');

  // mark visitor as idle
  smartsupp('status', 'idle');
</script>
```

## group

You can set visitor's group.

```js
<script>
  smartsupp('group', 'GROUP_HASH_ID');
</script>
```

## variables

You can set additional info about your visitor if needed.

```js
<script>
  smartsupp('variables', {
    accountId: { label: 'Account ID', value: 123 },
    role: { label: 'Role', value: 'admin' }
  });
</script>
```

## language

Currently we support 40 languages. See full list and settings at page [Multilanguage chat box](/docs/examples/multilanguage-chat-box/).