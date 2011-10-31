describe("Message Construction",
  it("can create a new message",
    Message clone isNil verify(not)
  )

  it("factory creates a new message",
    message(a) isNil verify(not)
  )

  it("creates a message from a string",
    Message clone fromString("a b") verify(compare(message(a b)))
  )
)
