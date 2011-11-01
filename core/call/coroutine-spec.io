describe("Call Coroutine",
  it("returns the calling coroutine",
    a := method(call coroutine)
    a == Coroutine currentCoroutine
  )
)
