describe("Message Evaluator",
  it("evaluates a message in a specific context",
    o := Object clone do(a := 42)
    message(a) doInContext(o) verify(== o a)
  )
)
