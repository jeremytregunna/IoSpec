describe("Block Equality",
  setup(
    blk := block(1)
  )

  it("returns true if both blocks are the same",
    other := getSlot("blk")
    other verify(== blk)
  )

  it("returns true if both blocks have the same scope, message body and argument list are the same",
    a := block(1)
    b := block(1)
    a verify(== b)
  )

  it("returns false if both blocks have different scopes",
    a := block(1) setScope(nil)
    b := block(1) setScope(Object)
    a verify(!= b)
  )

  it("returns false if both blocks have different argument lists",
    a := block(x, x)
    b := block(x, y, x)
    a verify(!= b)
  )

  it("returns false if both blocks have different bodies",
    a := block(x, y, x)
    b := block(x, y, y)
    a verify(!= b)
  )
)
