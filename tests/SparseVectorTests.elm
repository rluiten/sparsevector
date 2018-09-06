module SparseVectorTests exposing (cosineSimilarity1, dotProduct1, magnitude1, tests)

import Expect exposing (FloatingPointTolerance(..))
import SparseVector
import Test exposing (..)


tests : Test
tests =
    describe "SparseVector tests"
        [ magnitude1 ()
        , dotProduct1 ()
        , cosineSimilarity1 ()
        ]


magnitude1 _ =
    let
        vec =
            SparseVector.insertList [ ( 0, 4 ), ( 1, 5 ), ( 2, 6 ) ] SparseVector.empty
    in
    test "calculating the magnitude of a vector" <|
        \() -> SparseVector.magnitude vec |> Expect.within (Absolute 0.00001) (sqrt 77)


dotProduct1 _ =
    let
        vec1 =
            SparseVector.insertList [ ( 0, 1 ), ( 1, 3 ), ( 2, -5 ) ] SparseVector.empty

        vec2 =
            SparseVector.insertList [ ( 0, 4 ), ( 1, -2 ), ( 2, -1 ) ] SparseVector.empty
    in
    test "calculating the dot product with another vector dot" <|
        \() -> Expect.equal 3 (SparseVector.dot vec1 vec2)


cosineSimilarity1 _ =
    let
        vec1 =
            SparseVector.insertList [ ( 0, 1 ), ( 1, 3 ), ( 2, -5 ) ] SparseVector.empty

        vec2 =
            SparseVector.insertList [ ( 0, 4 ), ( 1, -2 ), ( 2, -1 ) ] SparseVector.empty
    in
    test "calculating the dot product with another vector cosineSimilarity" <|
        \() -> SparseVector.cosineSimilarity vec1 vec2 |> Expect.within (Absolute 0.001) 0.111
