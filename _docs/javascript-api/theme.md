---
title: "Theme"
subtitle: "Create your own design and set colors."
---

You can set your own dimensions to chat box in different states and adjust colors to fit your branding.

## theme:options

You can adjust **width** and **height** of chat box.

Learn more about [Chat box type](/docs/customization/chat-box-type/) before you continue.
{: .callout .callout-info }

### Widget: Closed state

This is what *closed* chat box looks like.

```js
<script>
  smartsupp('theme:options', {
    widgetWidth: 350,
    widgetHeight: 50
  });
</script>
```

![chat box type widget closed](/assets/img/docs/javascript-api/theme/chat-box-type-widget-closed.png)

### Widget: Open state

This is what *open* chat box looks like. It is called **panel**.

```js
<script>
  smartsupp('theme:options', {
    panelWidth: 350,
    panelHeight: 550
  });
</script>
```

![chat box type widget open](/assets/img/docs/javascript-api/theme/chat-box-type-widget-open.png)

### Button: Closed state

This is what *closed* chat button looks like.

```js
<script>
  smartsupp('theme:options', {
    buttonWidth: 150,
    buttonHeight: 50
  });
</script>
```

![chat box type button closed](/assets/img/docs/javascript-api/theme/chat-box-type-button-closed.png)

### Button: Open state

This is what *open* chat button looks like. It has same layout as **Widget: Open state**.

![chat box type widget open](/assets/img/docs/javascript-api/theme/chat-box-type-widget-open.png)

## Offline form

This theme options `offlineHeight` is design just for offline form to be able to fit custom fields defined by user.

### offlineHeight

By default offline form is not high enough to fit extra fields unless you want to see scrollbar.

```js
<script>
  smartsupp('theme:options', {
    offlineHeight: 475
  });
</script>
```

Example is explained in **Customization** section [Offline form with textinput](/docs/customization/offline-form/#offline-form-with-textinput).
{: .callout .callout-info }


## Colors and variables names

Colors are generated automatically to match Smartsupp default theme. Change them when you need to customize chat box to match your company brand colors for example.

**Color syntax:** Format must be full hex pairs `#ff0000` and not `#f00` shorthand.
{: .callout .callout-warning }

{% include component/tables/docs/javascript-api/{{ page.title | slugify }}/colors-variables-names.html %}

### theme:color

You can set a specific color to your chat box.

```js
<script>
  smartsupp('theme:color', '#ff0000');
</script>
```

### theme:colors

You can also set colors to multiple elements of the chat box.

```js
<script>
  smartsupp('theme:colors', { 
    primary:'#ff0000',
    banner:'#333333'
  });
</script>
```