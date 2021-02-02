%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Number1": 4,
  "Number2": 2
})