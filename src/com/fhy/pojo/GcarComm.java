package com.fhy.pojo;

public class GcarComm {
    private Integer id;
    private Integer commId;
    private Integer gId;
    private String commNum;
    private String commPrice;
    
    private String commName;
    private String commImg;
    private String gtime;
    

    public String getGtime() {
		return gtime;
	}

	public void setGtime(String gtime) {
		this.gtime = gtime;
	}

	public String getCommImg() {
		return commImg;
	}

	public void setCommImg(String commImg) {
		this.commImg = commImg;
	}

	public String getCommName() {
		return commName;
	}

	public void setCommName(String commName) {
		this.commName = commName;
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

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
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

	@Override
	public String toString() {
		return "GcarComm [id=" + id + ", commId=" + commId + ", gId=" + gId
				+ ", commNum=" + commNum + ", commPrice=" + commPrice + "]";
	}
    
}