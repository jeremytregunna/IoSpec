describe("Call Arguments",
  it("has arguments",
    blk := block(call hasArgs)
    blk call verify(== false)
    blk call(1, 2) verify(== true)
  )

  it("can count its arguments",
    block(call argCount) call(1, 2, 3) verify(== 3)
  )

  it("gets a raw message from its arguments",
    result := block(call argAt(1)) call(a, b, c)
    result verifyType(Message)
    result name verify(== "b")
  )

  it("evaluates all its arguments",
    block(call evalArgs) call(1, 2) verify(== list(1, 2))
  )

  it("evalutes an arbitrary argument only",
    block(call evalArgAt(1)) call("unevaluated", "evaluated") verify(== "evaluated")
  )

  it("our message is valid",
    block(call message) call name verify(== "call")
    x := method(call message)
    x name verify(== "x")
  )
)
