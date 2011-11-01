describe("Call Stop Status",
  it("sets the current stop status to break",
    block(call setStopStatus(Break)) call verifyType(Break)
  )

  it("sets the current stop status to continue",
    block(call setStopStatus(Continue)) call verifyType(Continue)
  )

  it("sets the current stop status to return",
    block(call setStopStatus(Return)) call verifyType(Return)
  )

  it("sets the current stop status to normal",
    block(
      // First so we know it's a dirty value
      call setStopStatus(Break)
      call setStopStatus(Normal)
    ) call verifyType(Normal)
  )
)
