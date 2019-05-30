---
title: "Detailed visitor info"
subtitle: "See additional info about your customers while chatting with them"
description: "See detailed info about your customers while chatting (name, email or your individual data). Detailed visitor info is automatically shown in Smartsupp if you use our integrations (plugins) for Prestashop, Wordpress or other platforms. In other case you can use following API to link your customer data."
redirect_from: 
  - /docs/examples/customer-info/
  - /docs/javascript-api/visitor-info/
---

## Visitor’s name and email address
Show visitor’s `name` and `email` in Smartsupp. It’s displayed in visitor info panel while chatting, also in visitor list, history etc.

![customer info](/assets/img/docs/examples/customer-info/customer-name-and-email.png)

```js
<script>
  smartsupp('name', 'John Doe');
  smartsupp('email', 'john.doe@example.com');
</script>
```

## Custom visitor info

Show custom visitor info in Smartsupp based on your needs. This info is shown in **Customer info** box in the visitor info panel while chatting. You can link any data you want, e.g. your internal customer ID, customer’s spending or customer’s last order ID.

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
