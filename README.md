# Benchmark
The Benchmark module provides methods to measure and report the time used to execute Swift code.

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

## Installation
### Carthage

```
// Cartfile
github "WorldDownTown/Benchmark"
```

## Usage
### Simple measure

```swift
import Benchmark

Benchmark.measure() {
    print(self) // don't have to set weak.
    for _ in 0...10000000 { }
}
// Benchmark: 0.1690970063 sec.

// Benchamrk can be set name.
Benchmark.measure("Measure1") {
    for _ in 0...10000000 { }
}
// Measure1: 0.1690970063 sec.
```

### Multiple measure

```swift
import Benchmark

func heavyMethod() {
    let outer = Benchmark(key: "outer")

    let inner = Benchmark(key: "inner")

    // some light processes
    for _ in 0...10 { }

    inner.finish()  // inner: 0.0002210140 sec.

    // some heavy processes
    for _ in 0...10000000 { }

    outer.finish()  // outer: 0.1663100123 sec.
}
```

### Through another Class (or Struct or file ...)

```swift
import Benchmark

class Foo {
    func execute() {
        Benchmark.start()
    }
}

class Bar {
    func execute() {
        Benchmark.finish()
    }
}

Foo().execute()

Bar().execute()  // Benchmark: 0.0001509786 sec.
```

## Contributing
Contributions are more than welcome! If you have an improvement or a feature you wish to have added to `Benchmark`, then please don't hesitate to send a pull request!

## Author
WorldDownTown @ gmail.com

## License
`Benchmark` is available under the MIT license. See the LICENSE file for more info.

