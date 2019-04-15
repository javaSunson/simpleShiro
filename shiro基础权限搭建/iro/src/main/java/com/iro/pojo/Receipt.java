package com.iro.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Receipt {
    private Long id;

    private String danhao;

    private String dianpu;

    private String jijianrenname;

    private String jijianrenadress;

    private String jijianrendianhua;

    private String jijianrenshouji;

    private String jijianrensheng;

    private String jijianrenshi;

    private String jijianrenqu;

    private String jijianrendetailadd;

    private String jijianrenpostcode;

    private String customerid;

    private String shoujianrenname;

    private String shoujianrenshouji;

    private String shoujianrendianhua;

    private String shoujianrensheng;

    private String shoujianrenshi;

    private String shoujianrenqu;

    private String shoujianrendetailadd;

    private BigDecimal dingdansummoney;

    private BigDecimal dingdanshifumoney;

    private BigDecimal yunfei;

    private String goodscode;

    private String goodstitle;

    private String goodsguige;

    private BigDecimal goodsprice;

    private Integer goodscount;

    private String goodsweight;

    private String message;

    private String memo;

    private String isdaofu;

    private String xiafawarehouse;

    private String zidingyi1;

    private String zidingyi2;

    private String zidingyi3;

    private String zidingyi4;

    private String zidingyi5;

    private String zidingyi6;

    private String zidingyi7;

    private String zidingyi8;

    private String zidingyiflag;

    private Date fukuantime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDanhao() {
        return danhao;
    }

    public void setDanhao(String danhao) {
        this.danhao = danhao == null ? null : danhao.trim();
    }

    public String getDianpu() {
        return dianpu;
    }

    public void setDianpu(String dianpu) {
        this.dianpu = dianpu == null ? null : dianpu.trim();
    }

    public String getJijianrenname() {
        return jijianrenname;
    }

    public void setJijianrenname(String jijianrenname) {
        this.jijianrenname = jijianrenname == null ? null : jijianrenname.trim();
    }

    public String getJijianrenadress() {
        return jijianrenadress;
    }

    public void setJijianrenadress(String jijianrenadress) {
        this.jijianrenadress = jijianrenadress == null ? null : jijianrenadress.trim();
    }

    public String getJijianrendianhua() {
        return jijianrendianhua;
    }

    public void setJijianrendianhua(String jijianrendianhua) {
        this.jijianrendianhua = jijianrendianhua == null ? null : jijianrendianhua.trim();
    }

    public String getJijianrenshouji() {
        return jijianrenshouji;
    }

    public void setJijianrenshouji(String jijianrenshouji) {
        this.jijianrenshouji = jijianrenshouji == null ? null : jijianrenshouji.trim();
    }

    public String getJijianrensheng() {
        return jijianrensheng;
    }

    public void setJijianrensheng(String jijianrensheng) {
        this.jijianrensheng = jijianrensheng == null ? null : jijianrensheng.trim();
    }

    public String getJijianrenshi() {
        return jijianrenshi;
    }

    public void setJijianrenshi(String jijianrenshi) {
        this.jijianrenshi = jijianrenshi == null ? null : jijianrenshi.trim();
    }

    public String getJijianrenqu() {
        return jijianrenqu;
    }

    public void setJijianrenqu(String jijianrenqu) {
        this.jijianrenqu = jijianrenqu == null ? null : jijianrenqu.trim();
    }

    public String getJijianrendetailadd() {
        return jijianrendetailadd;
    }

    public void setJijianrendetailadd(String jijianrendetailadd) {
        this.jijianrendetailadd = jijianrendetailadd == null ? null : jijianrendetailadd.trim();
    }

    public String getJijianrenpostcode() {
        return jijianrenpostcode;
    }

    public void setJijianrenpostcode(String jijianrenpostcode) {
        this.jijianrenpostcode = jijianrenpostcode == null ? null : jijianrenpostcode.trim();
    }

    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid == null ? null : customerid.trim();
    }

    public String getShoujianrenname() {
        return shoujianrenname;
    }

    public void setShoujianrenname(String shoujianrenname) {
        this.shoujianrenname = shoujianrenname == null ? null : shoujianrenname.trim();
    }

    public String getShoujianrenshouji() {
        return shoujianrenshouji;
    }

    public void setShoujianrenshouji(String shoujianrenshouji) {
        this.shoujianrenshouji = shoujianrenshouji == null ? null : shoujianrenshouji.trim();
    }

    public String getShoujianrendianhua() {
        return shoujianrendianhua;
    }

    public void setShoujianrendianhua(String shoujianrendianhua) {
        this.shoujianrendianhua = shoujianrendianhua == null ? null : shoujianrendianhua.trim();
    }

    public String getShoujianrensheng() {
        return shoujianrensheng;
    }

    public void setShoujianrensheng(String shoujianrensheng) {
        this.shoujianrensheng = shoujianrensheng == null ? null : shoujianrensheng.trim();
    }

    public String getShoujianrenshi() {
        return shoujianrenshi;
    }

    public void setShoujianrenshi(String shoujianrenshi) {
        this.shoujianrenshi = shoujianrenshi == null ? null : shoujianrenshi.trim();
    }

    public String getShoujianrenqu() {
        return shoujianrenqu;
    }

    public void setShoujianrenqu(String shoujianrenqu) {
        this.shoujianrenqu = shoujianrenqu == null ? null : shoujianrenqu.trim();
    }

    public String getShoujianrendetailadd() {
        return shoujianrendetailadd;
    }

    public void setShoujianrendetailadd(String shoujianrendetailadd) {
        this.shoujianrendetailadd = shoujianrendetailadd == null ? null : shoujianrendetailadd.trim();
    }

    public BigDecimal getDingdansummoney() {
        return dingdansummoney;
    }

    public void setDingdansummoney(BigDecimal dingdansummoney) {
        this.dingdansummoney = dingdansummoney;
    }

    public BigDecimal getDingdanshifumoney() {
        return dingdanshifumoney;
    }

    public void setDingdanshifumoney(BigDecimal dingdanshifumoney) {
        this.dingdanshifumoney = dingdanshifumoney;
    }

    public BigDecimal getYunfei() {
        return yunfei;
    }

    public void setYunfei(BigDecimal yunfei) {
        this.yunfei = yunfei;
    }

    public String getGoodscode() {
        return goodscode;
    }

    public void setGoodscode(String goodscode) {
        this.goodscode = goodscode == null ? null : goodscode.trim();
    }

    public String getGoodstitle() {
        return goodstitle;
    }

    public void setGoodstitle(String goodstitle) {
        this.goodstitle = goodstitle == null ? null : goodstitle.trim();
    }

    public String getGoodsguige() {
        return goodsguige;
    }

    public void setGoodsguige(String goodsguige) {
        this.goodsguige = goodsguige == null ? null : goodsguige.trim();
    }

    public BigDecimal getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(BigDecimal goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getGoodscount() {
        return goodscount;
    }

    public void setGoodscount(Integer goodscount) {
        this.goodscount = goodscount;
    }

    public String getGoodsweight() {
        return goodsweight;
    }

    public void setGoodsweight(String goodsweight) {
        this.goodsweight = goodsweight == null ? null : goodsweight.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    public String getIsdaofu() {
        return isdaofu;
    }

    public void setIsdaofu(String isdaofu) {
        this.isdaofu = isdaofu == null ? null : isdaofu.trim();
    }

    public String getXiafawarehouse() {
        return xiafawarehouse;
    }

    public void setXiafawarehouse(String xiafawarehouse) {
        this.xiafawarehouse = xiafawarehouse == null ? null : xiafawarehouse.trim();
    }

    public String getZidingyi1() {
        return zidingyi1;
    }

    public void setZidingyi1(String zidingyi1) {
        this.zidingyi1 = zidingyi1 == null ? null : zidingyi1.trim();
    }

    public String getZidingyi2() {
        return zidingyi2;
    }

    public void setZidingyi2(String zidingyi2) {
        this.zidingyi2 = zidingyi2 == null ? null : zidingyi2.trim();
    }

    public String getZidingyi3() {
        return zidingyi3;
    }

    public void setZidingyi3(String zidingyi3) {
        this.zidingyi3 = zidingyi3 == null ? null : zidingyi3.trim();
    }

    public String getZidingyi4() {
        return zidingyi4;
    }

    public void setZidingyi4(String zidingyi4) {
        this.zidingyi4 = zidingyi4 == null ? null : zidingyi4.trim();
    }

    public String getZidingyi5() {
        return zidingyi5;
    }

    public void setZidingyi5(String zidingyi5) {
        this.zidingyi5 = zidingyi5 == null ? null : zidingyi5.trim();
    }

    public String getZidingyi6() {
        return zidingyi6;
    }

    public void setZidingyi6(String zidingyi6) {
        this.zidingyi6 = zidingyi6 == null ? null : zidingyi6.trim();
    }

    public String getZidingyi7() {
        return zidingyi7;
    }

    public void setZidingyi7(String zidingyi7) {
        this.zidingyi7 = zidingyi7 == null ? null : zidingyi7.trim();
    }

    public String getZidingyi8() {
        return zidingyi8;
    }

    public void setZidingyi8(String zidingyi8) {
        this.zidingyi8 = zidingyi8 == null ? null : zidingyi8.trim();
    }

    public String getZidingyiflag() {
        return zidingyiflag;
    }

    public void setZidingyiflag(String zidingyiflag) {
        this.zidingyiflag = zidingyiflag == null ? null : zidingyiflag.trim();
    }

    public Date getFukuantime() {
        return fukuantime;
    }

    public void setFukuantime(Date fukuantime) {
        this.fukuantime = fukuantime;
    }
}