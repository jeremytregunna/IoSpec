describe("nil Control Flow",
  it("evaluates the argument to ifNilEval",
    nil ifNilEval(42) verify(== 42)
  )

  it("returns false when receiving and",
    nil and(42) verify(== nil)
  )

  it("returns the argument to or",
    nil or(42) verify(== 42)
  )
)
