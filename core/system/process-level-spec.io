describe("System Process",
  it("able to exit the interpreter",
    System shouldReceive(exit)
  )

  it("knows its platform",
    System shouldReceive(platform)
    System platform verifyType(Sequence)
    System platform size verify(> 0)
  )

  it("knows its platform version",
    System shouldReceive(platformVersion)
    System platformVersion verifyType(Sequence)
    System platformVersion size verify(> 0)
  )

  it("knows its launch path",
    System shouldReceive(launchPath)
    System launchPath verifyType(Sequence)
    System launchPath size verify(> 0)
  )

  it("knows its install prefix",
    System shouldReceive(installPrefix)
    System launchPath verifyType(Sequence)
    System launchPath size verify(> 0)
  )

  it("knows the path to its lib dir",
    System shouldReceive(ioPath)
    System ioPath verifyType(Sequence)
    System ioPath size verify(> 0)
  )
)
