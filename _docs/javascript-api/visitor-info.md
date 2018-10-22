---
title: "Visitor info"
subtitle: "Set basic visitor info."
description: "This API comes in handy when you need to modify your visitor info."
---

## name

You can set visitor's `name`.

```js
<script>
  smartsupp('name', 'username');
</script>
```

## email

You can set visitor's `email`.

```js
<script>
  smartsupp('email', 'user.email@example.com');
</script>
```

## status

Mark visitor as `active` or `idle`. This is helpful in non-refresh application when you want setup activity manually.

### active

Mark visitor as `active`.

```js
<script>
  smartsupp('status', 'active');
</script>
```

### idle

Mark visitor as `idle`.

```js
<script>
  smartsupp('status', 'idle');
</script>
```

## group

You can set visitor's `group`.

```js
<script>
  smartsupp('group', 'GROUP_ID');
</script>
```

## variables

You can set additional `variables` to get info about your visitor.

```js
<script>
  smartsupp('variables', {
    accountId: {
      label: 'Account ID',
      value: 123
    },
    role: {
      label: 'Role',
      value: 'admin'
    }
  });
</script>
```