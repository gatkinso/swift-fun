# swift-fun : a playground to explore Swift programming

Feel free to branch, fork, do whatever here - this is all about learning.

THis is all targeting MacOS, but there is no reason why you cannot run this on other operating systems provided you have have a proper installation of Swift.

Everything here is a very basic starting point to explore Swift syntax, packages, unit testing techniques.

## Building
```
you@mac swift-fun % cd swift-fun/MyLib
you@mac swift-fun % swift build
you@mac swift-fun % cd ../MyEXE
you@mac swift-fun % swift build
```
## Running unit tests
```
you@mac swift-fun % cd swift-fun/MyLib
you@mac swift-fun % swift test
```
## Cleaning
```
you@mac swift-fun % cd swift-fun/MyLib
you@mac swift-fun % swift package clean
you@mac swift-fun % cd ../MyEXE
you@mac swift-fun % swift package clean
```