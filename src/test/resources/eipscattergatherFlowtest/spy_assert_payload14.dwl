%dw 2.0
import * from dw::test::Asserts
---
payload must [
  beObject(),
  $[*"0"] must haveSize(1),
  $[*"1"] must haveSize(1),
  $[*"2"] must haveSize(1),
  $[*"0"][0] must [
    beObject(),
    $[*"payload"] must haveSize(1),
    $[*"payload"][0] must equalTo({
      "addition": 6
    })
  ],
  $[*"1"][0] must [
    beObject(),
    $[*"payload"] must haveSize(1),
    $[*"payload"][0] must equalTo({
      "Subtraction": 2
    })
  ],
  $[*"2"][0] must [
    beObject(),
    $[*"payload"] must haveSize(1),
    $[*"payload"][0] must equalTo({
      "multiplication": 8
    })
  ]
]