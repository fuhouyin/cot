package com.fhy.pojo;

public class Torder {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column torder.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column torder.user_id
     *
     * @mbggenerated
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column torder.otime
     *
     * @mbggenerated
     */
    private String otime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column torder.ostatus
     *
     * @mbggenerated
     */
    private Integer ostatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column torder.total
     *
     * @mbggenerated
     */
    private Long total;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column torder.id
     *
     * @return the value of torder.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column torder.id
     *
     * @param id the value for torder.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column torder.user_id
     *
     * @return the value of torder.user_id
     *
     * @mbggenerated
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column torder.user_id
     *
     * @param userId the value for torder.user_id
     *
     * @mbggenerated
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column torder.otime
     *
     * @return the value of torder.otime
     *
     * @mbggenerated
     */
    public String getOtime() {
        return otime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column torder.otime
     *
     * @param otime the value for torder.otime
     *
     * @mbggenerated
     */
    public void setOtime(String otime) {
        this.otime = otime == null ? null : otime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column torder.ostatus
     *
     * @return the value of torder.ostatus
     *
     * @mbggenerated
     */
    public Integer getOstatus() {
        return ostatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column torder.ostatus
     *
     * @param ostatus the value for torder.ostatus
     *
     * @mbggenerated
     */
    public void setOstatus(Integer ostatus) {
        this.ostatus = ostatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column torder.total
     *
     * @return the value of torder.total
     *
     * @mbggenerated
     */
    public Long getTotal() {
        return total;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column torder.total
     *
     * @param total the value for torder.total
     *
     * @mbggenerated
     */
    public void setTotal(Long total) {
        this.total = total;
    }
}