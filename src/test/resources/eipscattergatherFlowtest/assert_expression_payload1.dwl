%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "addition": 6
  },
  {
    "Subtraction": 2
  },
  {
    "multiplication": 8
  }
])