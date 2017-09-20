package com.muordb.muordb_worker;

import java.time.LocalDate;

public class Attribute {

    private int k_ess, k_uess, k_gr, k_egr;
    private int k_ess_p, k_uess_p, k_gr_p, k_egr_p;
    private int k_ess_v, k_uess_v, k_gr_v, k_egr_v;
    private int k_tab, k_v;
    private LocalDate dateFrom, dateTo;
    private int k_egr_parent;

    private String param;

    private int valInt;
    private String valString;
    private LocalDate valDate;
    private float valFloat;

    public Attribute(int k_ess, int k_uess, int k_gr, int k_egr, int k_ess_p, int k_uess_p, int k_gr_p, int k_egr_p, int k_ess_v, int k_uess_v, int k_gr_v, int k_egr_v, int k_tab, int k_v, LocalDate dateFrom, LocalDate dateTo, int k_egr_parent, String param, String valString) {
        this.k_ess = k_ess;
        this.k_uess = k_uess;
        this.k_gr = k_gr;
        this.k_egr = k_egr;
        this.k_ess_p = k_ess_p;
        this.k_uess_p = k_uess_p;
        this.k_gr_p = k_gr_p;
        this.k_egr_p = k_egr_p;
        this.k_ess_v = k_ess_v;
        this.k_uess_v = k_uess_v;
        this.k_gr_v = k_gr_v;
        this.k_egr_v = k_egr_v;
        this.k_tab = k_tab;
        this.k_v = k_v;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
        this.k_egr_parent = k_egr_parent;
        this.param = param;
        this.valString = valString;
    }


    public String getParam() {
        return param;
    }

    public String getValString() {
        return valString;
    }
}
