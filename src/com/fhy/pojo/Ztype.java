package com.fhy.pojo;

public class Ztype {
    private Integer id;
    private String ztypeName;
    private Integer typeId;
   
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getZtypeName() {
        return ztypeName;
    }

    public void setZtypeName(String ztypeName) {
        this.ztypeName = ztypeName == null ? null : ztypeName.trim();
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

	@Override
	public String toString() {
		return "Ztype [id=" + id + ", ztypeName=" + ztypeName + ", typeId="
				+ typeId + "]";
	}
    
}