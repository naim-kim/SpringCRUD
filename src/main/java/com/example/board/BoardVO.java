package com.example.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String name;
    private String studentnum;
    private String phonenum;
    private String major;
    private Date regdate;
    private int cnt;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {

        this.name = name;
    }

    public String getStudentnum() {

        return studentnum;
    }
    public void setStudentnum(String studentnum) {

        this.studentnum = studentnum;
    }

    public String getPhonenum() {

        return phonenum;
    }
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getMajor() {

        return major;
    }
    public void setMajor(String content) {

        this.major = content;
    }

    public Date getRegdate() {

        return regdate;
    }
    public void setRegdate(Date regdate) {

        this.regdate = regdate;
    }

}
