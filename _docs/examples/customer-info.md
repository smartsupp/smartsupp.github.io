---
title: "Customer info"
subtitle: "Display additional information about your customers."
---

Do you have eCommerce website or web application? Show info about customers (in Smartsupp dashboard) who are signed in on your site or app (name, email, spending and more). Your chat agents can see all this info while chatting with your customer.

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