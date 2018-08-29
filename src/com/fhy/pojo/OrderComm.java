package com.fhy.pojo;

public class OrderComm {
    private Integer id;
    private Integer commId;
    private String commNum;
    private String commPrice;
    private Integer oid;
    
    private String commName;
    private String commImg;
    private String otime;
    private String username;

    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCommName() {
		return commName;
	}

	public void setCommName(String commName) {
		this.commName = commName;
	}

	public String getCommImg() {
		return commImg;
	}

	public void setCommImg(String commImg) {
		this.commImg = commImg;
	}

	public String getOtime() {
		return otime;
	}

	public void setOtime(String otime) {
		this.otime = otime;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCommId() {
        return commId;
    }

    public void setCommId(Integer commId) {
        this.commId = commId;
    }

    public String getCommNum() {
        return commNum;
    }

    public void setCommNum(String commNum) {
        this.commNum = commNum == null ? null : commNum.trim();
    }

    public String getCommPrice() {
        return commPrice;
    }

    public void setCommPrice(String commPrice) {
        this.commPrice = commPrice == null ? null : commPrice.trim();
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }
}