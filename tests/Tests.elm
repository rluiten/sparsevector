module Tests exposing (all)

import SparseVectorTests
import Test exposing (..)


all : Test
all =
    SparseVectorTests.tests
