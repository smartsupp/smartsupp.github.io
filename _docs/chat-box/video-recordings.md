---
title: "Video Recordings"
subtitle: "You can see what visitors do on your website."
---

**Protection of sensitive customer data** If visitors enter sensitive data (e.g. credit card numbers, visible passwords) on your website, you should exclude this data from the recording by masking forms and inputs.
{: .callout .callout-warning }

## recording:disable

You can disable single page recording.

```js
<script>
	smartsupp('recording:disable', true);
</script>
```

## recording:ignore

Ignore recording of some parts of your page by adding attribute `data-recording-ignore` to the element you want to protect. Attribute has 2 supported values:

* `mask` - all user inputs are recorded as `*`. Inputs with *password* type are automatically masked.
* `events` - ignore recording of all events in matched element. Typing is not recorded.

## Masking forms

When form has an attribute `data-recording-ignore="mask"` all characters typed into inputs are recorded and stored as `*`. When watching the recording you see user typing but you can see only `*` instead of text.

```html
<!-- Mask all fields in form -->
<form data-recording-ignore="mask">
  <div>
    <label>Card number</label>
    <input type="text" placeholder="Card number">
  </div>
  <div>
    <label>Card year</label>
    <input type="text" placeholder="YYYY-MM">
  </div>
</form>
```

```html
<form>
  <div data-recording-ignore="mask">
    <!-- Mask only fields in this div -->
    <label>Card number</label>
    <input type="text" placeholder="Card number">
  </div>
  <div>
    <!-- Field is not masked -->
    <label>Card year</label>
    <input type="text" placeholder="YYYY-MM">
  </div>
</form>
```