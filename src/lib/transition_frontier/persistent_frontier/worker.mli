open Frontier_base

type create_args = {db: Database.t; logger: Logger.t}

type input =
  { diffs: Diff.Lite.E.t list
  ; target_hash: Frontier_hash.t
  ; garbage: Coda_base.State_hash.Hash_set.t }

include
  Otp_lib.Worker_supervisor.S
  with type create_args := create_args
   and type input := input
   and type output := unit
