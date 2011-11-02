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
	