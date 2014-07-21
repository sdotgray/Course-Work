{-# OPTIONS_GHC -w #-}
-- Shannon Gray
-- CMSC 305, Lab 4
-- Due: Sunday, October 27, 2013

--NOTES:
--You must alter/augment (a) the token aliases, (b) the AST datatype and associated semantic actions, and (c) the precedence directives (hardest) (resolve all --the reduce-reduce and shift-reduce conflicts, look in Grammar.info file for these) (add function application last).\
--make the file, then use happy -i Grammar.y to create the Grammar.info file.
--run the test with: Parser < test.hs > out.txt

-- how to add whitespace?????
--attach a token to something that doesn't have a token - happy manual. same for yacc add a tag to it

module Grammar where
import Lexer

-- parser produced by Happy Version 1.18.10

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (34) = happyShift action_10
action_0 (36) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail

action_1 (6) = happyShift action_2
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_5
action_3 (9) = happyShift action_6
action_3 (10) = happyShift action_7
action_3 (18) = happyShift action_19
action_3 (19) = happyShift action_20
action_3 (20) = happyShift action_21
action_3 (21) = happyShift action_8
action_3 (22) = happyShift action_22
action_3 (23) = happyShift action_23
action_3 (24) = happyShift action_24
action_3 (25) = happyShift action_25
action_3 (26) = happyShift action_26
action_3 (27) = happyShift action_27
action_3 (28) = happyShift action_28
action_3 (29) = happyShift action_29
action_3 (30) = happyShift action_30
action_3 (31) = happyShift action_31
action_3 (34) = happyShift action_10
action_3 (36) = happyShift action_11
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_18
action_3 _ = happyFail

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (36) = happyShift action_17
action_6 _ = happyFail

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (9) = happyShift action_6
action_7 (10) = happyShift action_7
action_7 (21) = happyShift action_8
action_7 (23) = happyShift action_9
action_7 (34) = happyShift action_10
action_7 (36) = happyShift action_11
action_7 (4) = happyGoto action_16
action_7 _ = happyFail

action_8 (6) = happyShift action_2
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (21) = happyShift action_8
action_8 (23) = happyShift action_9
action_8 (34) = happyShift action_10
action_8 (36) = happyShift action_11
action_8 (4) = happyGoto action_15
action_8 _ = happyFail

action_9 (8) = happyShift action_14
action_9 _ = happyFail

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (15) = happyShift action_13
action_10 (21) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (34) = happyShift action_10
action_10 (36) = happyShift action_11
action_10 (4) = happyGoto action_12
action_10 _ = happyFail

action_11 _ = happyReduce_24

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (18) = happyShift action_19
action_12 (19) = happyShift action_20
action_12 (20) = happyShift action_21
action_12 (21) = happyShift action_8
action_12 (22) = happyShift action_22
action_12 (23) = happyShift action_23
action_12 (24) = happyShift action_24
action_12 (25) = happyShift action_25
action_12 (26) = happyShift action_26
action_12 (27) = happyShift action_27
action_12 (28) = happyShift action_28
action_12 (29) = happyShift action_29
action_12 (30) = happyShift action_30
action_12 (31) = happyShift action_31
action_12 (34) = happyShift action_10
action_12 (35) = happyShift action_49
action_12 (36) = happyShift action_11
action_12 (4) = happyGoto action_18
action_12 _ = happyFail

action_13 (36) = happyShift action_48
action_13 _ = happyFail

action_14 _ = happyReduce_17

action_15 (9) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (18) = happyShift action_19
action_15 (19) = happyShift action_20
action_15 (20) = happyShift action_21
action_15 (22) = happyShift action_22
action_15 (23) = happyShift action_23
action_15 (24) = happyShift action_24
action_15 (25) = happyShift action_25
action_15 (26) = happyShift action_26
action_15 (27) = happyShift action_27
action_15 (28) = happyShift action_28
action_15 (29) = happyShift action_29
action_15 (30) = happyShift action_30
action_15 (31) = happyShift action_31
action_15 (34) = happyShift action_10
action_15 (4) = happyGoto action_18
action_15 _ = happyReduce_11

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_47
action_16 (18) = happyShift action_19
action_16 (19) = happyShift action_20
action_16 (20) = happyShift action_21
action_16 (21) = happyShift action_8
action_16 (22) = happyShift action_22
action_16 (23) = happyShift action_23
action_16 (24) = happyShift action_24
action_16 (25) = happyShift action_25
action_16 (26) = happyShift action_26
action_16 (27) = happyShift action_27
action_16 (28) = happyShift action_28
action_16 (29) = happyShift action_29
action_16 (30) = happyShift action_30
action_16 (31) = happyShift action_31
action_16 (34) = happyShift action_10
action_16 (36) = happyShift action_11
action_16 (4) = happyGoto action_18
action_16 _ = happyFail

action_17 (13) = happyShift action_46
action_17 _ = happyFail

action_18 (4) = happyGoto action_18
action_18 _ = happyReduce_7

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (34) = happyShift action_10
action_19 (36) = happyShift action_11
action_19 (4) = happyGoto action_45
action_19 _ = happyFail

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (34) = happyShift action_10
action_20 (36) = happyShift action_11
action_20 (4) = happyGoto action_44
action_20 _ = happyFail

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (34) = happyShift action_10
action_21 (36) = happyShift action_11
action_21 (4) = happyGoto action_43
action_21 _ = happyFail

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (34) = happyShift action_10
action_22 (36) = happyShift action_11
action_22 (4) = happyGoto action_42
action_22 _ = happyFail

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_41
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (34) = happyShift action_10
action_23 (36) = happyShift action_11
action_23 (4) = happyGoto action_40
action_23 _ = happyFail

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (34) = happyShift action_10
action_24 (36) = happyShift action_11
action_24 (4) = happyGoto action_39
action_24 _ = happyFail

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (34) = happyShift action_10
action_25 (36) = happyShift action_11
action_25 (4) = happyGoto action_38
action_25 _ = happyFail

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (34) = happyShift action_10
action_26 (36) = happyShift action_11
action_26 (4) = happyGoto action_37
action_26 _ = happyFail

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (34) = happyShift action_10
action_27 (36) = happyShift action_11
action_27 (4) = happyGoto action_36
action_27 _ = happyFail

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (10) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (34) = happyShift action_10
action_28 (36) = happyShift action_11
action_28 (4) = happyGoto action_35
action_28 _ = happyFail

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (9) = happyShift action_6
action_29 (10) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (34) = happyShift action_10
action_29 (36) = happyShift action_11
action_29 (4) = happyGoto action_34
action_29 _ = happyFail

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (34) = happyShift action_10
action_30 (36) = happyShift action_11
action_30 (4) = happyGoto action_33
action_30 _ = happyFail

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (10) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (34) = happyShift action_10
action_31 (36) = happyShift action_11
action_31 (4) = happyGoto action_32
action_31 _ = happyFail

action_32 (22) = happyShift action_22
action_32 (23) = happyShift action_23
action_32 (24) = happyShift action_24
action_32 (25) = happyShift action_25
action_32 (26) = happyShift action_26
action_32 (27) = happyFail
action_32 (28) = happyFail
action_32 (29) = happyFail
action_32 (30) = happyFail
action_32 (31) = happyFail
action_32 (34) = happyShift action_10
action_32 (4) = happyGoto action_18
action_32 _ = happyReduce_22

action_33 (22) = happyShift action_22
action_33 (23) = happyShift action_23
action_33 (24) = happyShift action_24
action_33 (25) = happyShift action_25
action_33 (26) = happyShift action_26
action_33 (27) = happyFail
action_33 (28) = happyFail
action_33 (29) = happyFail
action_33 (30) = happyFail
action_33 (31) = happyFail
action_33 (34) = happyShift action_10
action_33 (4) = happyGoto action_18
action_33 _ = happyReduce_21

action_34 (22) = happyShift action_22
action_34 (23) = happyShift action_23
action_34 (24) = happyShift action_24
action_34 (25) = happyShift action_25
action_34 (26) = happyShift action_26
action_34 (27) = happyFail
action_34 (28) = happyFail
action_34 (29) = happyFail
action_34 (30) = happyFail
action_34 (31) = happyFail
action_34 (34) = happyShift action_10
action_34 (4) = happyGoto action_18
action_34 _ = happyReduce_20

action_35 (22) = happyShift action_22
action_35 (23) = happyShift action_23
action_35 (24) = happyShift action_24
action_35 (25) = happyShift action_25
action_35 (26) = happyShift action_26
action_35 (27) = happyFail
action_35 (28) = happyFail
action_35 (29) = happyFail
action_35 (30) = happyFail
action_35 (31) = happyFail
action_35 (34) = happyShift action_10
action_35 (4) = happyGoto action_18
action_35 _ = happyReduce_19

action_36 (22) = happyShift action_22
action_36 (23) = happyShift action_23
action_36 (24) = happyShift action_24
action_36 (25) = happyShift action_25
action_36 (26) = happyShift action_26
action_36 (27) = happyFail
action_36 (28) = happyFail
action_36 (29) = happyFail
action_36 (30) = happyFail
action_36 (31) = happyFail
action_36 (34) = happyShift action_10
action_36 (4) = happyGoto action_18
action_36 _ = happyReduce_18

action_37 (34) = happyShift action_10
action_37 (4) = happyGoto action_18
action_37 _ = happyReduce_16

action_38 (34) = happyShift action_10
action_38 (4) = happyGoto action_18
action_38 _ = happyReduce_15

action_39 (34) = happyShift action_10
action_39 (4) = happyGoto action_18
action_39 _ = happyReduce_14

action_40 (24) = happyShift action_24
action_40 (25) = happyShift action_25
action_40 (26) = happyShift action_26
action_40 (34) = happyShift action_10
action_40 (4) = happyGoto action_18
action_40 _ = happyReduce_13

action_41 _ = happyReduce_17

action_42 (24) = happyShift action_24
action_42 (25) = happyShift action_25
action_42 (26) = happyShift action_26
action_42 (34) = happyShift action_10
action_42 (4) = happyGoto action_18
action_42 _ = happyReduce_12

action_43 (18) = happyShift action_19
action_43 (19) = happyShift action_20
action_43 (22) = happyShift action_22
action_43 (23) = happyShift action_23
action_43 (24) = happyShift action_24
action_43 (25) = happyShift action_25
action_43 (26) = happyShift action_26
action_43 (27) = happyShift action_27
action_43 (28) = happyShift action_28
action_43 (29) = happyShift action_29
action_43 (30) = happyShift action_30
action_43 (31) = happyShift action_31
action_43 (34) = happyShift action_10
action_43 (4) = happyGoto action_18
action_43 _ = happyReduce_10

action_44 (18) = happyShift action_19
action_44 (22) = happyShift action_22
action_44 (23) = happyShift action_23
action_44 (24) = happyShift action_24
action_44 (25) = happyShift action_25
action_44 (26) = happyShift action_26
action_44 (27) = happyShift action_27
action_44 (28) = happyShift action_28
action_44 (29) = happyShift action_29
action_44 (30) = happyShift action_30
action_44 (31) = happyShift action_31
action_44 (34) = happyShift action_10
action_44 (4) = happyGoto action_18
action_44 _ = happyReduce_9

action_45 (22) = happyShift action_22
action_45 (23) = happyShift action_23
action_45 (24) = happyShift action_24
action_45 (25) = happyShift action_25
action_45 (26) = happyShift action_26
action_45 (27) = happyShift action_27
action_45 (28) = happyShift action_28
action_45 (29) = happyShift action_29
action_45 (30) = happyShift action_30
action_45 (31) = happyShift action_31
action_45 (34) = happyShift action_10
action_45 (4) = happyGoto action_18
action_45 _ = happyReduce_8

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_4
action_46 (8) = happyShift action_5
action_46 (9) = happyShift action_6
action_46 (10) = happyShift action_7
action_46 (21) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (34) = happyShift action_10
action_46 (36) = happyShift action_11
action_46 (4) = happyGoto action_52
action_46 _ = happyFail

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_6
action_47 (10) = happyShift action_7
action_47 (21) = happyShift action_8
action_47 (23) = happyShift action_9
action_47 (34) = happyShift action_10
action_47 (36) = happyShift action_11
action_47 (4) = happyGoto action_51
action_47 _ = happyFail

action_48 (16) = happyShift action_50
action_48 _ = happyFail

action_49 _ = happyReduce_23

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_4
action_50 (8) = happyShift action_5
action_50 (9) = happyShift action_6
action_50 (10) = happyShift action_7
action_50 (21) = happyShift action_8
action_50 (23) = happyShift action_9
action_50 (34) = happyShift action_10
action_50 (36) = happyShift action_11
action_50 (4) = happyGoto action_55
action_50 _ = happyFail

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_4
action_51 (8) = happyShift action_5
action_51 (9) = happyShift action_6
action_51 (10) = happyShift action_7
action_51 (12) = happyShift action_54
action_51 (18) = happyShift action_19
action_51 (19) = happyShift action_20
action_51 (20) = happyShift action_21
action_51 (21) = happyShift action_8
action_51 (22) = happyShift action_22
action_51 (23) = happyShift action_23
action_51 (24) = happyShift action_24
action_51 (25) = happyShift action_25
action_51 (26) = happyShift action_26
action_51 (27) = happyShift action_27
action_51 (28) = happyShift action_28
action_51 (29) = happyShift action_29
action_51 (30) = happyShift action_30
action_51 (31) = happyShift action_31
action_51 (34) = happyShift action_10
action_51 (36) = happyShift action_11
action_51 (4) = happyGoto action_18
action_51 _ = happyFail

action_52 (6) = happyShift action_2
action_52 (7) = happyShift action_4
action_52 (8) = happyShift action_5
action_52 (9) = happyShift action_6
action_52 (10) = happyShift action_7
action_52 (14) = happyShift action_53
action_52 (18) = happyShift action_19
action_52 (19) = happyShift action_20
action_52 (20) = happyShift action_21
action_52 (21) = happyShift action_8
action_52 (22) = happyShift action_22
action_52 (23) = happyShift action_23
action_52 (24) = happyShift action_24
action_52 (25) = happyShift action_25
action_52 (26) = happyShift action_26
action_52 (27) = happyShift action_27
action_52 (28) = happyShift action_28
action_52 (29) = happyShift action_29
action_52 (30) = happyShift action_30
action_52 (31) = happyShift action_31
action_52 (34) = happyShift action_10
action_52 (36) = happyShift action_11
action_52 (4) = happyGoto action_18
action_52 _ = happyFail

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_4
action_53 (8) = happyShift action_5
action_53 (9) = happyShift action_6
action_53 (10) = happyShift action_7
action_53 (21) = happyShift action_8
action_53 (23) = happyShift action_9
action_53 (34) = happyShift action_10
action_53 (36) = happyShift action_11
action_53 (4) = happyGoto action_58
action_53 _ = happyFail

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (9) = happyShift action_6
action_54 (10) = happyShift action_7
action_54 (21) = happyShift action_8
action_54 (23) = happyShift action_9
action_54 (34) = happyShift action_10
action_54 (36) = happyShift action_11
action_54 (4) = happyGoto action_57
action_54 _ = happyFail

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_4
action_55 (8) = happyShift action_5
action_55 (9) = happyShift action_6
action_55 (10) = happyShift action_7
action_55 (18) = happyShift action_19
action_55 (19) = happyShift action_20
action_55 (20) = happyShift action_21
action_55 (21) = happyShift action_8
action_55 (22) = happyShift action_22
action_55 (23) = happyShift action_23
action_55 (24) = happyShift action_24
action_55 (25) = happyShift action_25
action_55 (26) = happyShift action_26
action_55 (27) = happyShift action_27
action_55 (28) = happyShift action_28
action_55 (29) = happyShift action_29
action_55 (30) = happyShift action_30
action_55 (31) = happyShift action_31
action_55 (34) = happyShift action_10
action_55 (35) = happyShift action_56
action_55 (36) = happyShift action_11
action_55 (4) = happyGoto action_18
action_55 _ = happyFail

action_56 (17) = happyShift action_59
action_56 _ = happyFail

action_57 (10) = happyShift action_7
action_57 (18) = happyShift action_19
action_57 (19) = happyShift action_20
action_57 (20) = happyShift action_21
action_57 (22) = happyShift action_22
action_57 (23) = happyShift action_23
action_57 (24) = happyShift action_24
action_57 (25) = happyShift action_25
action_57 (26) = happyShift action_26
action_57 (27) = happyShift action_27
action_57 (28) = happyShift action_28
action_57 (29) = happyShift action_29
action_57 (30) = happyShift action_30
action_57 (31) = happyShift action_31
action_57 (34) = happyShift action_10
action_57 (4) = happyGoto action_18
action_57 _ = happyReduce_5

action_58 (9) = happyShift action_6
action_58 (10) = happyShift action_7
action_58 (18) = happyShift action_19
action_58 (19) = happyShift action_20
action_58 (20) = happyShift action_21
action_58 (22) = happyShift action_22
action_58 (23) = happyShift action_23
action_58 (24) = happyShift action_24
action_58 (25) = happyShift action_25
action_58 (26) = happyShift action_26
action_58 (27) = happyShift action_27
action_58 (28) = happyShift action_28
action_58 (29) = happyShift action_29
action_58 (30) = happyShift action_30
action_58 (31) = happyShift action_31
action_58 (34) = happyShift action_10
action_58 (4) = happyGoto action_18
action_58 _ = happyReduce_4

action_59 (32) = happyShift action_61
action_59 (33) = happyShift action_62
action_59 (34) = happyShift action_63
action_59 (5) = happyGoto action_60
action_59 _ = happyFail

action_60 (16) = happyShift action_65
action_60 _ = happyFail

action_61 _ = happyReduce_27

action_62 _ = happyReduce_28

action_63 (32) = happyShift action_61
action_63 (33) = happyShift action_62
action_63 (34) = happyShift action_63
action_63 (5) = happyGoto action_64
action_63 _ = happyFail

action_64 (16) = happyShift action_67
action_64 (35) = happyShift action_68
action_64 _ = happyFail

action_65 (32) = happyShift action_61
action_65 (33) = happyShift action_62
action_65 (34) = happyShift action_63
action_65 (5) = happyGoto action_66
action_65 _ = happyFail

action_66 (16) = happyReduce_25
action_66 _ = happyReduce_6

action_67 (32) = happyShift action_61
action_67 (33) = happyShift action_62
action_67 (34) = happyShift action_63
action_67 (5) = happyGoto action_69
action_67 _ = happyFail

action_68 _ = happyReduce_26

action_69 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (Boolean True
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (Boolean False
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (INTVAL happy_var_1))
	 =  HappyAbsSyn4
		 (Integer happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 4 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 10 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LambdaExp happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Quot happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Rem happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyTerminal (INTVAL happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessEqual happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreatEqual happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Parens happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  4 happyReduction_24
happyReduction_24 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn4
		 (Variable happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Arrow happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Paren happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (Bool
	)

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (Int
	)

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BOOLVAL True -> cont 6;
	BOOLVAL False -> cont 7;
	INTVAL happy_dollar_dollar -> cont 8;
	LET -> cont 9;
	IF -> cont 10;
	THEN -> cont 11;
	ELSE -> cont 12;
	BIND -> cont 13;
	IN -> cont 14;
	LAMBDA -> cont 15;
	ARROW -> cont 16;
	COLONS -> cont 17;
	EQUALS -> cont 18;
	AND -> cont 19;
	OR -> cont 20;
	NOT -> cont 21;
	PLUS -> cont 22;
	MINUS -> cont 23;
	TIMES -> cont 24;
	QUOT -> cont 25;
	REM -> cont 26;
	LTEQ -> cont 27;
	GTEQ -> cont 28;
	NOTEQ -> cont 29;
	Lexer.LT -> cont 30;
	Lexer.GT -> cont 31;
	BOOL -> cont 32;
	INT -> cont 33;
	LPAREN -> cont 34;
	RPAREN -> cont 35;
	VAR happy_dollar_dollar -> cont 36;
	_ -> happyError' (tk:tks)
	}

happyError_ 37 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parserError

parseHaskellito tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError:: [Token] -> a
parserError _ = error "Parse Error"

data AST = Boolean Bool
		 | Integer Int
         | Let String AST AST
		 | If AST AST AST
		 | LambdaExp String AST Type Type
		 | App AST AST
		 | Equals AST AST
		 | And AST AST
		 | Or AST AST
		 | Not AST
         | Plus AST AST
         | Minus AST AST
         | Times AST AST
		 | Quot AST AST
		 | Rem AST AST
		 | Negate Int
		 | LessEqual AST AST
		 | GreatEqual AST AST
		 | NotEqual AST AST
		 | Less AST AST
		 | Greater AST AST
		 | Parens AST
         | Variable String
         deriving (Eq,Show)
		 
data Type = Bool
		 | Int
		 | Arrow Type Type
		 | Paren Type
		 deriving (Eq,Show)
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates\\GenericTemplate.hs" #-}








{-# LINE 51 "templates\\GenericTemplate.hs" #-}

{-# LINE 61 "templates\\GenericTemplate.hs" #-}

{-# LINE 70 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates\\GenericTemplate.hs" #-}
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
