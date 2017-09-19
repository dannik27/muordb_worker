select
  ess_name(cue.k_ess) as essence
  ,obj_name(cue.k_ess, cue.k_uess) as object
  ,value(cue.k_ess_p, cue.k_uess_p, cue.k_gr_p, cue.k_egr_p) as param
  ,value(cue.k_ess, cue.k_uess, cue.k_gr, cue.k_egr) as value
  ,*
from cue
order by cue.k_ess, cue.k_uess