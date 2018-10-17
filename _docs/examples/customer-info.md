---
title: "Customer info"
subtitle: "Display additional info about your customers."
description: "Your chat agents can see different info (name, email, spending, ...) when chatting with your customer and thus provide better support."
---

You need a connection to _your site or app user database_ to pull data from in order for API to work.
{: .callout .callout-warning }

## Customer name and email

Display customer `name` and `email` in your dashboard under tab **Customer info**.

![customer info](/assets/img/docs/examples/customer-info/customer-name-and-email.png)

```js
<script>
  smartsupp('name', 'John Doe');
  smartsupp('email', 'john.doe@example.com');
</script>
```

## Specific customer info

You can define custom and quite specific info that fits your business and support needs.

```js
<script>
  smartsupp('variables', {
    userId: {
      label: 'User ID ',
      value: 123
    },
    role: {
      label: 'Customer status',
      value: 'VIP'
    },
    orderedPrice: {
      label: 'Customer spending',
      value: '100 EUR'
    }
  });
</script>
```