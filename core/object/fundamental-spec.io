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

  it("has the right object as its proto",
    ctx proto verify(== Object)
    ctx protos at(0) verify(== Object)
  )

  it("finds the right slot on a proto",
    a := ctx clone
    a test verify(== 42)
  )

  it("finds a slot on a different proto, one that isn't the first proto",
    a := ctx clone
    a appendProto(Object clone do(x := 23))
    a x verify(== 23)
  )

  it("removes all protos and raises an exception when receiving a message",
    block(Object clone removeAllProtos clone) verifyException(Exception)
  )

  it("tells whether or not a slot exists on the object, or any of its descendents",
    ctx hasSlot("test") verify(== true)
    ctx hasSlot("fake") verify(== false)
    other := ctx clone
    other hasSlot("test") verify(== true)
  )

  it("is able to remove a slot from an object",
    ctx removeSlot("test")
    ctx hasLocalSlot("test") verify(== false)
  )
)
