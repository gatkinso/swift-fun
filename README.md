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
Output:
```
geoffrey@redchip MyLib % swift test
Building for debugging...
[3/3] Linking MyLibPackageTests
Build complete! (9.50s)
Test Suite 'All tests' started at 2024-05-03 09:10:52.630.
Test Suite 'MyLibPackageTests.xctest' started at 2024-05-03 09:10:52.631.
Test Suite 'MyLibTests' started at 2024-05-03 09:10:52.631.
Test Case '-[MyLibTests.MyLibTests test_myLibAdd]' started.
Test Case '-[MyLibTests.MyLibTests test_myLibAdd]' passed (0.000 seconds).
Test Case '-[MyLibTests.MyLibTests test_myLibSub]' started.
Test Case '-[MyLibTests.MyLibTests test_myLibSub]' passed (0.000 seconds).
Test Suite 'MyLibTests' passed at 2024-05-03 09:10:52.631.
         Executed 2 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'MyLibPackageTests.xctest' passed at 2024-05-03 09:10:52.631.
         Executed 2 tests, with 0 failures (0 unexpected) in 0.001 (0.001) seconds
Test Suite 'All tests' passed at 2024-05-03 09:10:52.632.
         Executed 2 tests, with 0 failures (0 unexpected) in 0.001 (0.002) seconds
```
## Cleaning
```
you@mac swift-fun % cd swift-fun/MyLib
you@mac swift-fun % swift package clean
you@mac swift-fun % cd ../MyEXE
you@mac swift-fun % swift package clean
```
## Running
```
you@mac swift-fun % cd ../MyEXE
you@mac swift-fun % swift run
```
Output:
```
geoffrey@redchip MyExe % swift run
Building for debugging...
Build complete! (0.27s)
2+3 better equal: 5
````