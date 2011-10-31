describe("Compiler",
  setup(
    expr := "a+(1)"
  )

  it("returns a proper message representing the input string",
    compiledMessage := Compiler messageForString(expr)
    compiledMessage verify(isKindOf(Message))
    compiledMessage verify(== message(a +(1)))
  )

  it("components of the message are of the right kind",
    tokens := Compiler tokensForString(expr) map(name)
    tokens join("") verify(== expr)
  )
)
