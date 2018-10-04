---
title: "Offline form"
subtitle: "Customize offline form fields."
---

Offline form is useful outside regular office or business hours.

## Default inputs

Default fields are `name` and `email`. **Email is always required** but the field `name` can be disabled. Message is not modifiable through API. You can add custom fields by setting property `offlineControls`. All values are sent visible in email to address specified in Dashboard. It's not possible to specify emails through API.

Hide default input: `name`

```js
_smartsupp.offlineNameControl = false;
```

If your form has more fields, scrollbar automatically appears in chat box, but you can always set offline chat box `offlineHeight` to show all fields without scrollbar. Put this as 2nd script below your main Smartsupp chat code. Adjust size as you need (default height is `420`).

```js
<script type="text/javascript">
  var _smartsupp = _smartsupp || {};
  _smartsupp.key = "YOUR_SMARTSUPP_CODE";
  // ... rest of the usual code (just example)
</script>

<script>
smartsupp('theme:options', {
  offlineHeight: 420
});
</script>
```

## Custom fields

- We support 3 field types: `textinput`, `select` and `checkbox`.
- Use attribute `required: true` to make the field mandatory for visitors.
- Attribute `name` has to be defined in every field and it can contain only lowercase and uppercase letters, no spaces allowed.

## Offline form default

Offline form will show each time you change your status in Dashboard from Online => Offline.

![offline form](/assets/img/docs/configurable-parts/offline-form.png)

## Offline form with textinput

This field can be used for example for entering phone number. This would be in offline form too many fields and scrollbar would appear. We can make the offline form height bigger (by 55px from 420 to 475) by using `offlineheight`. You can adjust the number as you need or to fit even more fields if needed.

```js
<script>
  smartsupp('theme:options', {
    offlineHeight: 475
  });
</script>
```

```js
_smartsupp.offlineControls = [
  {
    xtype: "textinput",
    name: "phone",
    label: "Phone number",
    required: true
  }
];
```

![offline form default](/assets/img/docs/configurable-parts/offline-form-with-text-input.png)

## Offline form with select

Useful if you have more groups (departments). In this example we disable **Name** field.

```js
// hide name field
_smartsupp.offlineNameControl = false;

// append select control
_smartsupp.offlineControls = [
  {
    xtype: "select",
    name: "question",
    label: "Question for ...",
    required: true,
    value: "support", // select default from your defined values
    items: {
      support: "Support",
      marketing: "Marketing",
      sales: "Sales"
    }
  }
];
```

![offline form with select](/assets/img/docs/configurable-parts/offline-form-with-select.png)

## Offline form with checkbox

This can be useful in case you need your visitors to confirm something before they start chat. As this is offline form however we need to adjust the height just a bit. In this case we used `offlineHeight: 450` (30px bigger from default).

![offline form with checkbox](/assets/img/docs/configurable-parts/offline-form-with-checkbox.png)

```js
_smartsupp.offlineControls = [
  {
    xtype: "checkbox",
    name: "conditions",
    label: "I have read the Terms and conditions.",
    required: true
  }
];
```