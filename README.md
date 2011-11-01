# IoSpec - The Io Programming Language Specification

This project aims to build a complete executable specification of the [Io Programming Language](http://iolanguage.com/). We do this so that the canonical IoVM of the day doesn't slow progress by stagnating its own development, when other implementations may put forward ideas to further the language. There are presnetly several implementations of Io under active development.

@stevedekorte started the Io programming language in 2002, and has implemented the most popular implementation; the canonical version. The goal of this project is to get rid of any one canonical version, and provide a base for all implementations to conform to, to be considered implementations of the Io programming language. This would apply to Steve's version as well.

Steve and I have talked about this project in brief, and we're both ok with taking it in this direction. More details will be forthcoming as we pick our testing framework, and start writing the tests. In general, a few things we want to do.

## Current Version

0.1.0 is the latest version of the specification.

## Goals

1. Test the core semantics of the language. Things like message sending, argument handling, exceptions, etc.
2. Test the required APIs. This won't include any addons, for instance as they're not part of the language.
3. Most important, this should function across implementations.

## Contributing

A few things to note. We use a primitive testing tool which is a fork of [Jonathan Wright's iospec2](https://github.com/quag/iospec2). If you want to help us build on that, awesome! We could use some help building up our table of expectations.

If you instead (or in addition to) want to help us build up the language spec, then that'd be great. The filename convention is `thingYoureTesting-spec.io`. Anything else and it won't be picked up by the automatic runner (feel free to improve that if you want too). Look at other specs for tips on how to write specs. If you want some more expressive power, or things like mocks, we'll need to build those into the testing tool. Send pull requests when you run into those and fix them.

## License

This specification is covered by the MIT license, which allows permissive use of the code. By contributing anything to this repository, you are implicitly agreeing to be bound by those conditions, and grant others permission to use your submissions under those terms, irrevokably.

```
Copyright (c) 2011, Jeremy Tregunna and others, All Rights Reserved.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

