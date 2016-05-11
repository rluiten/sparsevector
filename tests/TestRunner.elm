module ProgramTestRunner exposing (..)

import String
import ElmTest exposing (..)

import SparseVectorTests


main =
    runSuite
      ( suite "Element Test Runner Tests"
        [ SparseVectorTests.tests
        ]
      )
