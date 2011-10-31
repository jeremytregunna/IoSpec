describe("Object Fundamentals",
  setup(
    ctx := Object clone do(setSlot("test", 42))
  )

  it("sets a slot on the object and is able to retrieve its value with a send",
    ctx test verify(== 42)
  )

  it("can lookup a known slot on an object, but not find an unknown slot",
    ctx getSlot("test") verify(== 42)
    ctx getSlot("fake") verify(== nil)
  )

  it("tells whether or not a slot exists on the object, or any of its descendents",
    ctx hasSlot("test") verify(== true)
    ctx hasSlot("fake") verify(== false)
    other := ctx clone
    other hasSlot("test") verify(== true)
  )

  it("is able to remove a slot from an object",
    ctx removeSlot("test")
    ctx hasSlot("test") verify(== false)
  )
)
