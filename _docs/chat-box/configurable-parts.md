---
title: "Configurable parts"
subtitle: "Change behavior and modify parts of chat box as forms, prompts or rating window."
---

If you did not install [Smartsupp Chat Code](https://www.smartsupp.com/help/smartsupp-chat-code/){:target='\_blank'} read our tutorial first.
{: .callout .callout-info }

Here you can see the default chat code. Enter your configuration after the line with `_smartsupp.key`

```js
<script type="text/javascript">
var _smartsupp = _smartsupp || {};
_smartsupp.key = "YOUR_ACCOUNT_KEY";
// ...
// your configuration
// ...
window.smartsupp||(function(d) {
  var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
  s=d.getElementsByTagName('script')[0];c=d.createElement('script');
  c.type='text/javascript';c.charset='utf-8';c.async=true;
  c.src='//www.smartsuppchat.com/loader.js';s.parentNode.insertBefore(c,s);
})(document);
</script>
```

## Sub-domains integration

Smartsupp visitor is identified by unique key stored in cookies. By default chat conversation is terminated when visitor opens a sub-domain on your website. You should set main domain as cookie domain if you want chat conversations uninterrupted accross your sub-domains. Insert the cookieDomain parameter in your chat code on main domain and all subdomains where you want the chat conversation uninterrupted.

```js
_smartsupp.cookieDomain = ".your-domain.com";
```

## Optional email transcript

When the visitor wants to end conversation a confirmation window is displayed. It can display transcript button.

### transcript button enabled

This is option is displayed by default. It shows a button which sends transcript to email.

![transcript enabled](/assets/img/docs/configurable-parts/transcript-enabled.png)

### transcript button disabled

If you do not need this feature in your chat box you can disable it.

```js
_smartsupp.sendEmailTanscript = false; // default value = true
```

![transcript disabled](/assets/img/docs/configurable-parts/transcript-disabled.png)

## Rating window

After visitor ends conversation a rating window is displayed. You can add a text box for visitor to write a comment.

### simple rating (3 icons)

You can display feedback icons.

```js
_smartsupp.ratingEnabled = true; // default value = false
```

![rating simple](/assets/img/docs/configurable-parts/rating-simple.png)

### rating with a comment

You can display feedback icons including text area for a comment.

```js
_smartsupp.ratingComment = true; // default value = false
```

![rating with comment](/assets/img/docs/configurable-parts/rating-with-comment.png)

## Chat box design type

We supports 2 chat box layouts: `widget` and `button`. You can override default behaviour.

### layout: widget

This layout shown on _desktop_ by default.

```js
_smartsupp.widget = "widget";
```

![chat box layout widget](/assets/img/docs/configurable-parts/chat-box-layout-widget.png)

### layout: button

This layout shown on _mobile_ by default.

```js
_smartsupp.widget = "button";
```

![chat box layout button](/assets/img/docs/configurable-parts/chat-box-layout-button.png)

## Pre-chat form

When chat is online visitor sees open chat and can write message. Pre-chat form will show right after visitor sends first message.

If you are using pre-chat form, you can customize the form fields. Default fields are `name` and `email`. If you want to disable name or email set property `loginNameControl` or `loginEmailControl` to `false`. You can add custom fields by setting property `loginControls`. All filled values are sent to dashboard and shown in **Visitor info** and **Customer info** in the right panel of the conversation window.

- We support 3 field types: `textinput`, `select` and `checkbox`.
- Attribute `name` must be defined in every field and it can contain only lowercase and uppercase letters, no spaces allowed.
- Use attribute `required: true` to make the field mandatory for visitors.

### Pre-chat form default

`no code example, some text only`

```js
xyz;
```

`!img`

### Pre-chat form with textinput

This field can be used for example for entering phone number.

```js
xyz;
```

`!img`

### Pre-chat form with select

x

`!img`

```js
_smartsupp.requireLogin = true;
// hide default name input
_smartsupp.loginNameControl = false;
// append custom controls
_smartsupp.loginControls = [
  {
    xtype: "select",
    name: "problem",
    label: "Reason",
    required: true,
    value: "error", // pre-selected value
    items: {
      normal: "Normal question",
      error: "Error report",
      other: "Something else"
    }
  }
];
```

### Pre-chat form with checkbox

x

`!img`

```js
_smartsupp.requireLogin = true;
// disable email
_smartsupp.loginEmailControl = false;
// append checkbox control to confirm something
_smartsupp.loginControls = [
  {
    xtype: "checkbox",
    name: "conditions",
    label: "I have read and accept the Terms and conditions.",
    required: true
  }
];
```

## Offline form

You can customize the form fields in offline form. Default fields are `name` and `email`. Email is always required, name can be disabled, message is not modifiable through API. You can add custom fields by setting property `offlineControls`. All values are sent visible in email to address(es) specified in dashboard. It's not possible to specify emails through API. If your form has more fields, scrollbar automatically appears in chat box, but you can always set offline chat box **height** to show all fields without scrollbar.

- We support 4 field types: `textinput`, `select` and `checkbox`.
- Attribute `name` has to be defined in every field and it can contain only lowercase and uppercase letters, no spaces allowed.
- Use attribute `required: true` to make the field mandatory for visitors.

### Offline form default

`no code example, some text only`

`img`

### Offline form with textinput

This field can be used for example for entering phone number.

```js
xyz;
```

`!img`

### Offline form with select

```js
// name is disabled
_smartsupp.offlineNameControl = false;
// append select control
_smartsupp.offlineControls = [
  {
    xtype: "select",
    name: "question",
    label: "Question",
    required: true,
    value: "error", // pre-selected value
    items: {
      normal: "Normal question",
      error: "Error report",
      other: "Something else"
    }
  }
];
```

`!img`

## Google Analytics integration

Smartsupp is linked with your Google Analytics (GA) automatically. Smartsupp checks your site's source code for GA property ID and sends data to all GA accounts it found. If you want to send Smartsupp events only to one specific account you do so by selecting it via GA KEY or GA Tracker name. If you have subdomains on your website and you are tracking all of them in one GA account use the `gaOptions` parameter described in [Google Analytics](https://developers.google.com/analytics/devguides/collection/analyticsjs/#customizeTracker) documentation.

```js
_smartsupp.gaKey = "UA-XXXX-Y"; // Use this code if you want to link only to one specific account
_smartsupp.gaName = "your_tracker_name"; // Use this code if you want to linkt to specific GA Tracker Name

_smartsupp.gaOptions = {
  cookieDomain: "foo.example.com"
};
```

With previous configuration is GA initialized like this: `ga('create', KEY, OPTIONS);`

## Hide chat box on certain pages

You can hide chat box on certain pages by setting the variable `hideWidget`

```js
_smartsupp.hideWidget = true; // use on pages where you want to hide chat box
_smartsupp.hideMobileWidget = true; // hide chat box on mobile devices
```

## Mobile chat box

This API code allows you to set when to show mobile chat box.

```js
_smartsupp.smallDeviceMinWidth = 641; // screen width in pixels when mobile chat box is shown
```

## Privacy notice

You can manually enable or disable privacy notice in chat box. Also you can specify custom url for your own privacy page. This could be useful when you are using Smartsupp chat across several sites.

```js
_smartsupp.privacyNoticeEnabled = false; // privacy notice visibility in chat widget
_smartsupp.privacyNoticeUrl = "https://"; // URL of your privacy page
```

## Advanced settings

Use this API if you want to disable text area, sounds, chat bubble or auto messages.

```js
_smartsupp.writable = false; // disable text area and send button
_smartsupp.soundMuted = true; // disable sounds for visitors
_smartsupp.hideBanner = true; // don’t show chat bubble
_smartsupp.triggerable = false; // disables auto-messages
```
