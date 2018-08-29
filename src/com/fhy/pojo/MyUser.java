package com.fhy.pojo;

public class MyUser {
    private Integer id;
    private Integer userId;
    private String name;
    private String weixin;
    private String address;
    private String pca;
    private Integer provinceId;
    private Integer cityId;
    private Integer areaId;
    private String phone;
    private String remark;
    private String username;
    

    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getWeixin() {
        return weixin;
    }

    public void setWeixin(String weixin) {
        this.weixin = weixin == null ? null : weixin.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPca() {
        return pca;
    }

    public void setPca(String pca) {
        this.pca = pca == null ? null : pca.trim();
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	@Override
	public String toString() {
		return "MyUser [id=" + id + ", userId=" + userId + ", name=" + name
				+ ", weixin=" + weixin + ", address=" + address + ", pca="
				+ pca + ", provinceId=" + provinceId + ", cityId=" + cityId
				+ ", areaId=" + areaId + ", phone=" + phone + ", remark="
				+ remark + "]";
	}
    
    
}