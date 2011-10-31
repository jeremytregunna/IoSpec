Expectations := Object clone

Object verify := method(
	checkMessage := call argAt(0)
	checkCode := call message code

	if(checkMessage name == "==",
		other := call sender doMessage(checkMessage argAt(0), call sender)

		if(self == other,
			return self
		,
			AssertionFailed raise(self asSimpleString .. " != " .. other asSimpleString .. ". " .. checkCode)
		)
	)

	if(self doMessage(checkMessage, call sender),
		return self
	,
		AssertionFailed raise(checkCode)
	)
)

Object verifyType := method(anObject,
  if(anObject isKindOf(anObject),
    self
  ,
    AssertionFailed raise(self asSimpleString .. " != " .. anObject asSimpleString)
  )
)

Block verifyException := method(exception,
  e := try(self call)
  e verifyType(exception)
)

Object shouldReceive := method(
  name := call argAt(0) name
  if(self getSlot(name),
    self
  ,
    AssertionFailed raise(self asSimpleString .. " does not respond to '" .. name .. "'")
  )
)
