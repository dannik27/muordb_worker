CREATE OR REPLACE FUNCTION value(k_ess_in integer, k_uess_in integer, k_gr_in integer, k_egr_in integer)
  RETURNS text AS $$
declare
  res text;
  k_tab_d integer;
  k_v_d integer;
  k_ess_v_d integer;
  k_uess_v_d integer;
  k_gr_v_d integer;
  k_egr_v_d integer;
begin
    select k_tab, k_v, k_ess_v, k_uess_v, k_gr_v, k_egr_v
      into k_tab_d, k_v_d , k_ess_v_d , k_uess_v_d , k_gr_v_d , k_egr_v_d
      from cue
      where k_ess=k_ess_in and k_uess=k_uess_in and k_gr=k_gr_in and k_egr=k_egr_in  ;

    if(k_tab_d > 0)
    then case k_tab_d
      when 1 then select val into res from rtab1 where k_v=k_v_d;
      when 2 then select val into res from rtab2 where k_v=k_v_d;
      when 3 then select val into res from rtab3 where k_v=k_v_d;
      when 4 then select val into res from rtab4 where k_v=k_v_d;
      when 5 then select val into res from rtab5 where k_v=k_v_d;
      else res := 'Значение не найдено';
    end case;
      return res;
    else if (k_ess_v_d >0)
      then if (k_egr_v_d >0)
        then return value(k_ess_v_d , k_uess_v_d , k_gr_v_d , k_egr_v_d);
          else if (k_uess_v_d >0)
            then return obj_n(k_ess_v_d , k_uess_v_d);
              else return '';
          end if;
       end if;
    else return k_v_d;
    end if;
    end if;
end;
$$ LANGUAGE 'plpgsql';