package com.fhy.pojo;

public class Comm {
    
    private Integer id;
    private Integer userId;
    private Integer typeId;
    private String commName;
    private String commPrice;
    private String commImg;
    private Integer commStatus;
    private String commRemark;
    private int ztypeId;
    
    private String name;
    private String phone;
    private String weixin;
    private String typeName;
    private String ztypeName;
    

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getZtypeName() {
		return ztypeName;
	}

	public void setZtypeName(String ztypeName) {
		this.ztypeName = ztypeName;
	}

	public int getZtypeId() {
		return ztypeId;
	}

	public void setZtypeId(int ztypeId) {
		this.ztypeId = ztypeId;
	}

	public String getCommRemark() {
		return commRemark;
	}

	public void setCommRemark(String commRemark) {
		this.commRemark = commRemark;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getCommName() {
        return commName;
    }

    public void setCommName(String commName) {
        this.commName = commName == null ? null : commName.trim();
    }

    public String getCommPrice() {
        return commPrice;
    }

    public void setCommPrice(String commPrice) {
        this.commPrice = commPrice == null ? null : commPrice.trim();
    }

    public String getCommImg() {
        return commImg;
    }

    public void setCommImg(String commImg) {
        this.commImg = commImg == null ? null : commImg.trim();
    }

    public Integer getCommStatus() {
        return commStatus;
    }

    public void setCommStatus(Integer commStatus) {
        this.commStatus = commStatus;
    }

	@Override
	public String toString() {
		return "Comm [id=" + id + ", userId=" + userId + ", typeId=" + typeId
				+ ", commName=" + commName + ", commPrice=" + commPrice
				+ ", commImg=" + commImg + ", commStatus=" + commStatus + "]";
	}
    
}