func hello() -> String {
        return "hello"
}

func assertEquals(_ expected: String, _ actual: String) {
         if expected == actual {
           print("Passed.")
          } else {
            print("Failed.")
            print("Expected: " + expected)
            print("Actual: " + actual)
           }
}

func testNoName() {
        let expected = "Hello, World!"
        assertEquals(expected, hello())
}

func testEverything() {
         testNoName()
}

testEverything()