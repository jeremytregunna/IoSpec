describe("System Utility",
  it("sleeps for one second",
    // Considered a failure if you sleep too short or too long, but understanding you'll actually sleep for more than a second.
    Date secondsToRun(System sleep(1)) floor verify(== 1)
  )

  it("has a version number",
    System shouldReceive(version)
    System version verifyType(Sequence)
    System version size verify(> 0)
  )

  it("has a populated symbol table",
    System shouldReceive(symbols)
    System symbols verifyType(List)
    System symbols size verify(> 0)
  )

  // This seems like it should work to me, but waiting on word from Steve if his VM is broken in this respect
  /*
  it("can change its lobby",
    a := Object clone do(x := 42)
    System setLobby(a)
    Lobby x verify(== 42)
  )
  */
)
