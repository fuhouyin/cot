package com.fhy.pojo;

public class Type {
    private Integer id;
    private String commType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommType() {
        return commType;
    }

    public void setCommType(String commType) {
        this.commType = commType == null ? null : commType.trim();
    }

	@Override
	public String toString() {
		return "Type [id=" + id + ", commType=" + commType + "]";
	}
    
}