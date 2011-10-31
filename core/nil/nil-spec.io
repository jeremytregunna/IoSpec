describe("nil",
  it("has a single instance",
    nil clone uniqueId verify(== nil uniqueId)
  )
)
