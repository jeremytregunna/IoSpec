describe("Object Clone",
  it("creates a new empty object",
    Object clone slotNames verify(== list)
  )

  it("preserves the activatable bit after a clone",
    orig := Object clone do(setIsActivatable(true))
    other := getSlot("orig") clone
    getSlot("other") isActivatable verify(== true)
  )

  it("creates a type slot automatically when given a slot name starting with an uppercase letter",
    Foo := Object clone
    Foo slotNames verify(== list("type"))
  )

  it("proto is set to the object cloned from",
    o := Object clone
    o proto verify(== Object)
    o protos at(0) verify(== Object)
  )
)
