describe("Block Serialization",
  it("serializes the block to a textual representation",
    blk := block(a, a +(1))
    blk serialized verify(== "block(a, a +(1))\n")
  )
)
