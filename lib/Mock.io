InjectionLayer := Object clone do(
	on := method(target,
		new := self clone
		new setSlot("injectionLayerBit")
		new prependProto(target proto)
		target setProto(new)
		new
		)
		
	remove := method(
		self become(self proto)
		)
	)
	
Injectable := Object clone do(	
	injectInto := method(target,
		target proto hasLocalSlot("injectionLayerBit") ifFalse(
			InjectionLayer on(target)
		)
		target proto setSlot(self type, self)
		self
    )
)

Mock := Injectable clone do(
	mocking := method(target,
		new := self clone
		target isKindOf(Sequence) ifTrue(
			new type := target
		) ifFalse(
			new prependProto(target)
		)
		new	
	)
)