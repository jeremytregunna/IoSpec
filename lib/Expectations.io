Expectations := Object clone

Block verifyException := method(exception,
  e := try(self call)
  if(e isKindOf(exception),
    return self
  ,
    AssertionFailed raise(exception asSimpleString .. " != " .. e asSimpleString)
  )
)
