(**
 * This module describes methods which are performed on build tasks through * "esy-build-package" package builder executable.
 *)

(**
 * Build task.
 *)
val build :
  ?force:bool
  -> ?buildOnly:bool
  -> ?quiet:bool
  -> ?stderrout:[ `Keep | `Log ]
  -> Config.t
  -> Task.t
  -> unit RunAsync.t

(*
 * Spawn an interactive shell inside tbuild environment of the task.
 *)
val buildShell :
  Config.t
  -> Task.t
  -> Unix.process_status RunAsync.t

(*
 * Execute a command inside build environment of the task.
 *)
val buildExec :
  Config.t
  -> Task.t
  -> string list
  -> Unix.process_status RunAsync.t
