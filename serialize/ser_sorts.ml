(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016 MINES ParisTech                                       *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Ser_univ

type contents =
  [%import: Sorts.contents]
  [@@deriving sexp]

type family =
  [%import: Sorts.family]
  [@@deriving sexp]

type sort =
  [%import: Sorts.t
  [@with Univ.universe := universe
  ]]
  [@@deriving sexp]
