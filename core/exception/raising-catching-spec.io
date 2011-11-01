describe("Exception Raising and Catching",
  setup(
    exc := try(aNonExistentSlotName)
  )

  it("raises a custom exception",
    block(Exception raise("Custom exception")) verifyException(Exception)
  )

  it("contains a valid call object",
    exc originalCall verifyType(Call)
  )

  it("contains a valid message which was the message which caused the exception to be thrown",
    exc originalCall message name verify(== "aNonExistentSlotName")
  )

  it("catches a thrown exception and returns nil",
    exc catch(Exception) verify(== nil)
  )

  it("catches a thrown exception and returns a value",
    exc catch(Exception, return 42) verify(== 42)
  )

  pending("has a nested exception")
)
