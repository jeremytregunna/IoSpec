describe("Collector correctness",
  setup(
    testCaseForFreedCount := method(Object clone; nil)
  )

  it("keeps track of all objects in the system",
    Collector allObjects size verify(> 0)
  )

  it("returns the count of how many objects were freed",
    Collector collect
    testCaseForFreedCount
    Collector collect println verify(> 0) // In practice, this should be == 3, but this may impose implementation details on users
  )
)
