describe("Block Call",
  it("invokes the block with no arguments, returning its value",
    blk := block(1 +(1))
    blk call verify(== 2)
  )

  it("invokes the block with the specified number of arguments, returning its value",
    blk := block(a, b, a +(b))
    blk call(1, 2) verify(== 3)
  )

  it("raises an exception when missing an argument",
    blk := block(a, a)
    e := try(blk call)
    e verify(isKindOf(Exception))
  )

  it("accepts additional arguments that were not specified",
    blk := block(call evalArgAt(0))
    blk call(1) verify(== 1)
  )
)
