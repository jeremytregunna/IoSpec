describe("Exception Printing",
  setup(
    exc := try(aNonExistentSlotName)
  )

  it("contains an error",
    exc shouldReceive(error)
    exc error verifyType(Sequence)
  )

  it("contains a stack trace",
    exc shouldReceive(showStack)
    // We don't mandate a certain format be used, just that a string is returned which contains a stack trace
  )
)
