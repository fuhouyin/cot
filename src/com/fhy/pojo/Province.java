package com.fhy.pojo;

public class Province {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column province.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column province.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column province.province_id
     *
     * @mbggenerated
     */
    private String provinceId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column province.id
     *
     * @return the value of province.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column province.id
     *
     * @param id the value for province.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column province.name
     *
     * @return the value of province.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column province.name
     *
     * @param name the value for province.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column province.province_id
     *
     * @return the value of province.province_id
     *
     * @mbggenerated
     */
    public String getProvinceId() {
        return provinceId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column province.province_id
     *
     * @param provinceId the value for province.province_id
     *
     * @mbggenerated
     */
    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId == null ? null : provinceId.trim();
    }
}