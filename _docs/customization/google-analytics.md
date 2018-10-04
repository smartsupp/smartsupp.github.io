---
title: "Google Analytics"
subtitle: "Integration."
---

Smartsupp is linked with your Google Analytics (GA) automatically.

[Google Analytics Connection](https://www.smartsupp.com/help/google-analytics/){:target='\_blank'} tutorial in our HELP section.
{: .callout .callout-info }

## Integration

Smartsupp checks your site's source code for GA property ID and sends data to all GA accounts it found. If you want to send Smartsupp events only to one specific account you do so by selecting it via GA KEY or GA Tracker name. If you have subdomains on your website and you are tracking all of them in one GA account use the `gaOptions` parameter described in [Google Analytics](https://developers.google.com/analytics/devguides/collection/analyticsjs/#customizeTracker){:target='\_blank'} documentation.

Initialize GA settings using: `ga('create', KEY, OPTIONS);`

## gaKey

Use this code if you want to link only to one specific account.

```js
_smartsupp.gaKey = "UA-XXXX-Y";
_smartsupp.gaOptions = {
  cookieDomain: "foo.example.com"
};
```

## gaName

Use this code if you want to linkt to a specific GA Tracker Name.

```js
_smartsupp.gaName = "your_tracker_name";
_smartsupp.gaOptions = {
  cookieDomain: "foo.example.com"
};
```