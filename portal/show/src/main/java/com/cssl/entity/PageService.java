package com.cssl.entity;


import java.util.List;

public class PageService {

    Page page;
    List<Consult> pageAllConsultList;//查全部咨询

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }

    public List<Consult> getPageAllConsultList() {
        return pageAllConsultList;
    }

    public void setPageAllConsultList(List<Consult> pageAllConsultList) {
        this.pageAllConsultList = pageAllConsultList;
    }
}
