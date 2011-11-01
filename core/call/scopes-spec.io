describe("Call Scopes",
  it("has a sender, and it is the current context",
    block(call sender) call verify(== thisContext)
    method(call sender) call verify(== thisContext)
  )

  it("knows that the activated block was ourselves",
    blk := block(call activated)
    mth := method(call activated)
    blk call verify(== blk)
    mth call verify(== mth)
  )

  it("the target represents the receiver of the method invocation",
    o := Object clone do(
      blk := block(call target) setIsActivatable(true)
      mth := method(call target)
    )

    o blk verify(== o)
    o mth verify(== o)
  )

  it("a lexical blocks self pointer points at the context in which it is scoped",
    a := method(self b := block(self))
    a
    b call verifyType(a)
  )

  it("knows where its slot is defined",
    a := Object clone do(foo := method(call slotContext))
    b := a clone
    b foo verifyType(a)
  )
)
