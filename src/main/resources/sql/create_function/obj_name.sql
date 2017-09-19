CREATE OR REPLACE FUNCTION obj_name(k_ess_in INTEGER, k_uess_in INTEGER)
  RETURNS text AS $$

declare
  res text;
  cc cue;
begin
  res:='';
  for cc in select * from cue c
    where k_ess=k_ess_in and k_uess=k_uess_in and
          exists(select * from cue c1 where c.k_ess_p=c1.k_ess and c.k_uess_p=c1.k_uess and c.k_gr_p=c1.k_gr
                                            and c1.k_ess_p=2 and c1.k_uess_p=5 and c1.k_gr_p=1 and c1.k_egr_p=1)
    loop
      if(res<>'')then res:=res||'//';end if;
      select res||VALUE(k_ess,k_uess,k_gr,k_egr) into res from cue
      where k_ess=cc.k_ess and k_uess=cc.k_uess and k_gr=cc.k_gr and k_egr=cc.k_egr;

    end loop;

    if res = ''
      then res := k_uess_in;
    end if;

    return res;
  end;
$$ LANGUAGE 'plpgsql';