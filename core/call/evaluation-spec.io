describe("Call Evaluation",
  it("evaluates all its arguments",
    block(call evalArgs) call(1, 2) verify(== list(1, 2))
  )

  it("evalutes an arbitrary argument only",
    block(call evalArgAt(1)) call("unevaluated", "evaluated") verify(== "evaluated")
  )

  it("delegates the calling message to a different target",
    o := Object clone do(a := method(42))
    a := method(call delegateTo(o))
    a verify(== 42)
  )

  it("delegates the calling message to a different target with an alternative sender",
    o := Object clone do(a := method(call sender))
    a := method(call delegateTo(o, o))
    a verify(== o)
  )

  it("preserves the stop status when delegating to another target",
    o := Object clone do(a := method(call stopStatus))
    a := method(call setStopStatus(Break); call delegateTo(o))
    a verify(== Break)
  )

  it("delegates the calling message to a different target via a different method",
    o := Object clone do(b := method(42))
    a := method(call delegateToMethod(o, "b"))
    a verify(== 42)
  )
)
