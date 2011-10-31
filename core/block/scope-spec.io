describe("Block Scope",
  setup(
    blk := block(1) setScope(Object)
  )

  it("allows scope to be modified",
    a := blk clone setScope(nil)
    a scope verify(!= Object)
  )

  it("self points at the scope",
    blk := block(self) setScope(1)
    blk call verify(== 1)
  )
)
