---
title: "Theme"
subtitle: "Set chat box colors and design."
---

**Color syntax:** Format must be RGB `#ff0000` (red color). Short version `#f00` is not supported.
{: .callout .callout-warning }




## theme:color

You can set a specific color to your chat box.

```js
  smartsupp('theme:color', '#ff0000');
```

## theme:colors

You can also set colors to multiple elements of the chat box.

```js
smartsupp('theme:colors', { 
  primary:'#ff0000',
  banner:'#333333'
});
```

## Colors variables names

Colors are generated automatically to match Smartsupp default theme. Change them when you need to customize chat box to match your company brand colors for example.

{% include component/tables/docs/chat-box/{{ page.title | slugify }}/colors-variables-names.html %}