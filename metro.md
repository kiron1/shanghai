---
title: Shanghai metro card balance API
date: 2020-01-08
---

Send the card number (digits only, without any leading alphabetic characters)
as an `application/x-www-form-urlencoded` encoded body of a `POST` request with
the name `cardno` to
`https://shanghaicity.openservice.kankanews.com/public/traffic/Jtkapi`.


## Example

The actual user interface is available at:
https://shanghaicity.openservice.kankanews.com/public/traffic/jtkye

### Request

```sh
curl --include --silent \
     --data 'cardno=12345678888' \
     https://shanghaicity.openservice.kankanews.com/public/traffic/Jtkapi
```

### Response

The response will be a JSON encoded directroy. Please note that the HTTP
response header of `Content-Type` is wrongly `text/html` (should be
`application/json`), this might confuse some tools (e.g. the Shortcuts app from
iOS).

```json
{"cardno":"12345678888","balance":"0.00","lastdate":"20200107","content":"由于数据传输到系统存在一定延时， 所查出的余额仅作参考。","state":"00"}
```

- The field `cardno` echos bag our card number from the request.
- The `lastdate` field is encoded as `YYYYMMDD`.
- The `balance` field is the up to 24 hours old balance on your card in RMB.
- The `state` field is unknown.
