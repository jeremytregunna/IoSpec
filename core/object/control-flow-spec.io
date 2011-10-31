describe("Object Control Flow",
  it("evaluates its truth message on truth",
    if(true, "right", "wrong") verify(== "right")
  )

  it("evaluates its false message on false or nil",
    if(false, "wrong", "right") verify(== "right")
    if(nil,   "wrong", "right") verify(== "right")
  )

  it("loops until a break is encountered",
    counter := 0
    loop(
      counter = counter + 1
      if(counter == 10, break)
    )
    counter verify(== 10)
  )

  it("restarts the loop when continue is hit",
    counter := 0
    loop(
      if(counter == 0,
        counter = 1
        continue
      )
      break
    )
  counter verify(== 1)
  )
)
