CREATE OR REPLACE FUNCTION ess_name(k_ess_in integer)
  RETURNS text AS $$
declare
  res text;
  k_tab_d integer;
  k_v_d integer;

begin
  select k_tab, k_v
  into k_tab_d, k_v_d
  from cue
  where k_ess=1 and k_uess=k_ess_in and k_ess_p=2 and k_uess_p=1  ;

  if(k_tab_d > 0)
  then case k_tab_d
    when 1 then select val into res from rtab1 where k_v=k_v_d;
    when 2 then select val into res from rtab2 where k_v=k_v_d;
    when 3 then select val into res from rtab3 where k_v=k_v_d;
    when 4 then select val into res from rtab4 where k_v=k_v_d;
    when 5 then select val into res from rtab5 where k_v=k_v_d;
    else res := 'Значение не найдено';
  end case;
  end if;

  return res;

end;
$$ LANGUAGE 'plpgsql';