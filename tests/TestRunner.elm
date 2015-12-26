module TestRunner where

import String
import Graphics.Element exposing (Element)

import ElmTest exposing (..)

import SparseVectorTests


main : Element
main =
    elementRunner
      ( suite "Element Test Runner Tests"
        [ SparseVectorTests.tests
        ]
      )
