describe("Collector Finalization",
  setup(
    testCaseForWillFree := method(
      Lobby willFreeWorked := false
      Object clone do(willFree := method(Lobby willFreeWorked := true))
      nil // So we don't accidentily keep a reference to the above object around
    )
  )

  it("executes the willFree message upon garbage collection",
    testCaseForWillFree
    Collector collect
    Lobby willFreeWorked verify(== true)
  )
)
