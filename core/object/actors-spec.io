describe("Object Actors",
  it("schedules actors in the correct order",
    a := Object clone do(
      s := Sequence clone
      test := method(str, for(i, 1, 2, s appendSeq(str, i asString, "."); yield))
    )
    a clone @@test("a")
    yield
    a clone @@test("b")
    4 repeat(yield)
    a s verify(== "a1.b1.a2.b2.")
  )

  it("fires an async thread returning a future",
    a := Object clone
    a square := method(n, n * 2)
    future := a @square(2)
    future verify(== 4)
  )
)
