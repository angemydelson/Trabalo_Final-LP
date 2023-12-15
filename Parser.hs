{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,139) ([14368,75,259,0,0,0,32768,15,496,0,0,0,0,57472,300,12,0,0,256,0,22977,6146,16384,0,0,0,33280,1203,48,0,0,32768,0,248,7938,0,256,15872,49154,2055,4814,16576,38512,1536,45954,12292,39952,32805,57473,300,1036,2407,8288,19256,768,22977,6146,52744,49170,28736,150,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57472,300,12,49408,0,0,0,22977,6146,496,15904,0,8,0,24704,0,0,0,0,0,4344,7936,14368,75,3,32,2048,4814,16576,38512,1536,0,0,0,0,0,6176,0,0,0,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","\"&&\"","\"||\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","':'","Num","Bool","\"==\"","\"<\"","\">\"","\"<=\"","\">=\"","leia","escreva","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (23) = happyShift action_10
action_0 (33) = happyShift action_11
action_0 (34) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_18
action_3 (8) = happyShift action_19
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (28) = happyShift action_23
action_3 (29) = happyShift action_24
action_3 (30) = happyShift action_25
action_3 (31) = happyShift action_26
action_3 (32) = happyShift action_27
action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (12) = happyShift action_4
action_6 (13) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (18) = happyShift action_8
action_6 (20) = happyShift action_9
action_6 (23) = happyShift action_10
action_6 (33) = happyShift action_11
action_6 (34) = happyShift action_12
action_6 (4) = happyGoto action_17
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_10

action_8 (17) = happyShift action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (12) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (18) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (23) = happyShift action_10
action_9 (33) = happyShift action_11
action_9 (34) = happyShift action_12
action_9 (4) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (17) = happyShift action_14
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_19

action_12 (6) = happyShift action_2
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (17) = happyShift action_7
action_12 (18) = happyShift action_8
action_12 (20) = happyShift action_9
action_12 (23) = happyShift action_10
action_12 (33) = happyShift action_11
action_12 (34) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_18
action_13 (8) = happyShift action_19
action_13 (9) = happyShift action_20
action_13 (10) = happyShift action_21
action_13 (11) = happyShift action_22
action_13 (28) = happyShift action_23
action_13 (29) = happyShift action_24
action_13 (30) = happyShift action_25
action_13 (31) = happyShift action_26
action_13 (32) = happyShift action_27
action_13 _ = happyReduce_20

action_14 (22) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_18
action_15 (8) = happyShift action_19
action_15 (9) = happyShift action_20
action_15 (10) = happyShift action_21
action_15 (11) = happyShift action_22
action_15 (21) = happyShift action_40
action_15 (28) = happyShift action_23
action_15 (29) = happyShift action_24
action_15 (30) = happyShift action_25
action_15 (31) = happyShift action_26
action_15 (32) = happyShift action_27
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (25) = happyShift action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_18
action_17 (8) = happyShift action_19
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_22
action_17 (15) = happyShift action_38
action_17 (28) = happyShift action_23
action_17 (29) = happyShift action_24
action_17 (30) = happyShift action_25
action_17 (31) = happyShift action_26
action_17 (32) = happyShift action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (18) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (23) = happyShift action_10
action_18 (33) = happyShift action_11
action_18 (34) = happyShift action_12
action_18 (4) = happyGoto action_37
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (12) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (18) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (23) = happyShift action_10
action_19 (33) = happyShift action_11
action_19 (34) = happyShift action_12
action_19 (4) = happyGoto action_36
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (23) = happyShift action_10
action_20 (33) = happyShift action_11
action_20 (34) = happyShift action_12
action_20 (4) = happyGoto action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (12) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (18) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (23) = happyShift action_10
action_21 (33) = happyShift action_11
action_21 (34) = happyShift action_12
action_21 (4) = happyGoto action_34
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (12) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (17) = happyShift action_7
action_22 (18) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (23) = happyShift action_10
action_22 (33) = happyShift action_11
action_22 (34) = happyShift action_12
action_22 (4) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (17) = happyShift action_7
action_23 (18) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (23) = happyShift action_10
action_23 (33) = happyShift action_11
action_23 (34) = happyShift action_12
action_23 (4) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (18) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (23) = happyShift action_10
action_24 (33) = happyShift action_11
action_24 (34) = happyShift action_12
action_24 (4) = happyGoto action_31
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (17) = happyShift action_7
action_25 (18) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (23) = happyShift action_10
action_25 (33) = happyShift action_11
action_25 (34) = happyShift action_12
action_25 (4) = happyGoto action_30
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (12) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (17) = happyShift action_7
action_26 (18) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (23) = happyShift action_10
action_26 (33) = happyShift action_11
action_26 (34) = happyShift action_12
action_26 (4) = happyGoto action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (12) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (18) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (23) = happyShift action_10
action_27 (33) = happyShift action_11
action_27 (34) = happyShift action_12
action_27 (4) = happyGoto action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_18
action_28 (8) = happyShift action_19
action_28 (9) = happyShift action_20
action_28 (10) = happyShift action_21
action_28 (11) = happyShift action_22
action_28 (28) = happyShift action_23
action_28 (29) = happyShift action_24
action_28 (30) = happyShift action_25
action_28 (31) = happyShift action_26
action_28 (32) = happyShift action_27
action_28 _ = happyReduce_18

action_29 (7) = happyShift action_18
action_29 (8) = happyShift action_19
action_29 (9) = happyShift action_20
action_29 (10) = happyShift action_21
action_29 (11) = happyShift action_22
action_29 (28) = happyShift action_23
action_29 (29) = happyShift action_24
action_29 (30) = happyShift action_25
action_29 (31) = happyShift action_26
action_29 (32) = happyShift action_27
action_29 _ = happyReduce_17

action_30 (7) = happyShift action_18
action_30 (8) = happyShift action_19
action_30 (9) = happyShift action_20
action_30 (10) = happyShift action_21
action_30 (11) = happyShift action_22
action_30 (28) = happyShift action_23
action_30 (29) = happyShift action_24
action_30 (30) = happyShift action_25
action_30 (31) = happyShift action_26
action_30 (32) = happyShift action_27
action_30 _ = happyReduce_16

action_31 (7) = happyShift action_18
action_31 (8) = happyShift action_19
action_31 (9) = happyShift action_20
action_31 (10) = happyShift action_21
action_31 (11) = happyShift action_22
action_31 (28) = happyShift action_23
action_31 (29) = happyShift action_24
action_31 (30) = happyShift action_25
action_31 (31) = happyShift action_26
action_31 (32) = happyShift action_27
action_31 _ = happyReduce_15

action_32 (7) = happyShift action_18
action_32 (8) = happyShift action_19
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_21
action_32 (11) = happyShift action_22
action_32 (28) = happyShift action_23
action_32 (29) = happyShift action_24
action_32 (30) = happyShift action_25
action_32 (31) = happyShift action_26
action_32 (32) = happyShift action_27
action_32 _ = happyReduce_14

action_33 (7) = happyShift action_18
action_33 (8) = happyShift action_19
action_33 (9) = happyShift action_20
action_33 (10) = happyShift action_21
action_33 (11) = happyShift action_22
action_33 (28) = happyShift action_23
action_33 (29) = happyShift action_24
action_33 (30) = happyShift action_25
action_33 (31) = happyShift action_26
action_33 (32) = happyShift action_27
action_33 _ = happyReduce_8

action_34 (7) = happyShift action_18
action_34 (8) = happyShift action_19
action_34 (9) = happyShift action_20
action_34 (10) = happyShift action_21
action_34 (11) = happyShift action_22
action_34 (28) = happyShift action_23
action_34 (29) = happyShift action_24
action_34 (30) = happyShift action_25
action_34 (31) = happyShift action_26
action_34 (32) = happyShift action_27
action_34 _ = happyReduce_7

action_35 (7) = happyShift action_18
action_35 (8) = happyShift action_19
action_35 (9) = happyShift action_20
action_35 (10) = happyShift action_21
action_35 (11) = happyShift action_22
action_35 (28) = happyShift action_23
action_35 (29) = happyShift action_24
action_35 (30) = happyShift action_25
action_35 (31) = happyShift action_26
action_35 (32) = happyShift action_27
action_35 _ = happyReduce_6

action_36 (7) = happyShift action_18
action_36 (8) = happyShift action_19
action_36 (9) = happyShift action_20
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_22
action_36 (28) = happyShift action_23
action_36 (29) = happyShift action_24
action_36 (30) = happyShift action_25
action_36 (31) = happyShift action_26
action_36 (32) = happyShift action_27
action_36 _ = happyReduce_5

action_37 (8) = happyShift action_19
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_22
action_37 (28) = happyShift action_23
action_37 (29) = happyShift action_24
action_37 (30) = happyShift action_25
action_37 (31) = happyShift action_26
action_37 (32) = happyShift action_27
action_37 _ = happyReduce_4

action_38 (6) = happyShift action_2
action_38 (12) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (18) = happyShift action_8
action_38 (20) = happyShift action_9
action_38 (23) = happyShift action_10
action_38 (33) = happyShift action_11
action_38 (34) = happyShift action_12
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_44
action_39 (26) = happyShift action_45
action_39 (27) = happyShift action_46
action_39 (5) = happyGoto action_43
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_12

action_41 (6) = happyShift action_2
action_41 (12) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (18) = happyShift action_8
action_41 (20) = happyShift action_9
action_41 (23) = happyShift action_10
action_41 (33) = happyShift action_11
action_41 (34) = happyShift action_12
action_41 (4) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_18
action_42 (8) = happyShift action_19
action_42 (9) = happyShift action_20
action_42 (10) = happyShift action_21
action_42 (11) = happyShift action_22
action_42 (24) = happyShift action_51
action_42 (28) = happyShift action_23
action_42 (29) = happyShift action_24
action_42 (30) = happyShift action_25
action_42 (31) = happyShift action_26
action_42 (32) = happyShift action_27
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (19) = happyShift action_50
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_44
action_44 (26) = happyShift action_45
action_44 (27) = happyShift action_46
action_44 (5) = happyGoto action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_22

action_46 _ = happyReduce_21

action_47 (7) = happyShift action_18
action_47 (8) = happyShift action_19
action_47 (9) = happyShift action_20
action_47 (10) = happyShift action_21
action_47 (11) = happyShift action_22
action_47 (16) = happyShift action_48
action_47 (28) = happyShift action_23
action_47 (29) = happyShift action_24
action_47 (30) = happyShift action_25
action_47 (31) = happyShift action_26
action_47 (32) = happyShift action_27
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_2
action_48 (12) = happyShift action_4
action_48 (13) = happyShift action_5
action_48 (14) = happyShift action_6
action_48 (17) = happyShift action_7
action_48 (18) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (23) = happyShift action_10
action_48 (33) = happyShift action_11
action_48 (34) = happyShift action_12
action_48 (4) = happyGoto action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (12) = happyShift action_4
action_50 (13) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (17) = happyShift action_7
action_50 (18) = happyShift action_8
action_50 (20) = happyShift action_9
action_50 (23) = happyShift action_10
action_50 (33) = happyShift action_11
action_50 (34) = happyShift action_12
action_50 (4) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (12) = happyShift action_4
action_51 (13) = happyShift action_5
action_51 (14) = happyShift action_6
action_51 (17) = happyShift action_7
action_51 (18) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (23) = happyShift action_10
action_51 (33) = happyShift action_11
action_51 (34) = happyShift action_12
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_18
action_52 (8) = happyShift action_19
action_52 (9) = happyShift action_20
action_52 (10) = happyShift action_21
action_52 (11) = happyShift action_22
action_52 (28) = happyShift action_23
action_52 (29) = happyShift action_24
action_52 (30) = happyShift action_25
action_52 (31) = happyShift action_26
action_52 (32) = happyShift action_27
action_52 _ = happyReduce_13

action_53 (7) = happyShift action_18
action_53 (8) = happyShift action_19
action_53 (9) = happyShift action_20
action_53 (10) = happyShift action_21
action_53 (11) = happyShift action_22
action_53 (28) = happyShift action_23
action_53 (29) = happyShift action_24
action_53 (30) = happyShift action_25
action_53 (31) = happyShift action_26
action_53 (32) = happyShift action_27
action_53 _ = happyReduce_11

action_54 (20) = happyShift action_44
action_54 (26) = happyShift action_45
action_54 (27) = happyShift action_46
action_54 (5) = happyGoto action_56
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_18
action_55 (8) = happyShift action_19
action_55 (9) = happyShift action_20
action_55 (10) = happyShift action_21
action_55 (11) = happyShift action_22
action_55 (28) = happyShift action_23
action_55 (29) = happyShift action_24
action_55 (30) = happyShift action_25
action_55 (31) = happyShift action_26
action_55 (32) = happyShift action_27
action_55 _ = happyReduce_9

action_56 (21) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_23

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EqEq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lte happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gte happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn4
		 (Read
	)

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Print happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_23 = happyReduce 5 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenTrue -> cont 12;
	TokenFalse -> cont 13;
	TokenIf -> cont 14;
	TokenThen -> cont 15;
	TokenElse -> cont 16;
	TokenVar happy_dollar_dollar -> cont 17;
	TokenLam -> cont 18;
	TokenArrow -> cont 19;
	TokenLParen -> cont 20;
	TokenRParen -> cont 21;
	TokenEq -> cont 22;
	TokenLet -> cont 23;
	TokenIn -> cont 24;
	TokenColon -> cont 25;
	TokenNumber -> cont 26;
	TokenBoolean -> cont 27;
	TokenEqEq -> cont 28;
	TokenLt -> cont 29;
	TokenGt -> cont 30;
	TokenLte -> cont 31;
	TokenGte -> cont 32;
	TokenRead -> cont 33;
	TokenPrint -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
