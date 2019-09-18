package com.area.api.entity;

import java.io.Serializable;

/**
 * (User)实体类
 *
 * @author 奔跑的月光
 * @since 2019-09-15 12:43:05
 */
public class User implements Serializable {
    private static final long serialVersionUID = 378321942263054292L;
    
    private Integer id;
    //邮箱
    private String email;
    //密码
    private String password;
    //名字
    private String name;
    //性别(1为男，0为女)
    private String gender;
    //头像
    private String photo;
    //一句话简介（干什么的）
    private String autograph;
    //隐私保护（1是/0否）
    private String privacyProtection;
    //赞次数
    private Integer praiseNumb;
    //感谢次数
    private Integer thankNumb;
    //提问次数
    private Integer questionNumb;
    //回答次数
    private Integer answerNumb;
    //收藏次数
    private Integer collectNumb;
    //编辑次数
    private Integer editNumb;
    //关注了几人(数量)
    private Integer attentionNumb;
    //关注该用户的人(数量)
    private Integer followerNumb;
    //关注话题个数
    private Integer concernTopicNumb;
    //个性网址
    private String personalityUrl;
    //邮箱激活(1.是，0否)
    private String emailActivate;
    //禁用（1是，0否）
    private String forbidden;
    //禁用时间
    private Object forbiddenTime;
    //角色（1管理员，2次要管理员，3用户）
    private String role;
    //创建时间
    private Object createTime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getAutograph() {
        return autograph;
    }

    public void setAutograph(String autograph) {
        this.autograph = autograph;
    }

    public String getPrivacyProtection() {
        return privacyProtection;
    }

    public void setPrivacyProtection(String privacyProtection) {
        this.privacyProtection = privacyProtection;
    }

    public Integer getPraiseNumb() {
        return praiseNumb;
    }

    public void setPraiseNumb(Integer praiseNumb) {
        this.praiseNumb = praiseNumb;
    }

    public Integer getThankNumb() {
        return thankNumb;
    }

    public void setThankNumb(Integer thankNumb) {
        this.thankNumb = thankNumb;
    }

    public Integer getQuestionNumb() {
        return questionNumb;
    }

    public void setQuestionNumb(Integer questionNumb) {
        this.questionNumb = questionNumb;
    }

    public Integer getAnswerNumb() {
        return answerNumb;
    }

    public void setAnswerNumb(Integer answerNumb) {
        this.answerNumb = answerNumb;
    }

    public Integer getCollectNumb() {
        return collectNumb;
    }

    public void setCollectNumb(Integer collectNumb) {
        this.collectNumb = collectNumb;
    }

    public Integer getEditNumb() {
        return editNumb;
    }

    public void setEditNumb(Integer editNumb) {
        this.editNumb = editNumb;
    }

    public Integer getAttentionNumb() {
        return attentionNumb;
    }

    public void setAttentionNumb(Integer attentionNumb) {
        this.attentionNumb = attentionNumb;
    }

    public Integer getFollowerNumb() {
        return followerNumb;
    }

    public void setFollowerNumb(Integer followerNumb) {
        this.followerNumb = followerNumb;
    }

    public Integer getConcernTopicNumb() {
        return concernTopicNumb;
    }

    public void setConcernTopicNumb(Integer concernTopicNumb) {
        this.concernTopicNumb = concernTopicNumb;
    }

    public String getPersonalityUrl() {
        return personalityUrl;
    }

    public void setPersonalityUrl(String personalityUrl) {
        this.personalityUrl = personalityUrl;
    }

    public String getEmailActivate() {
        return emailActivate;
    }

    public void setEmailActivate(String emailActivate) {
        this.emailActivate = emailActivate;
    }

    public String getForbidden() {
        return forbidden;
    }

    public void setForbidden(String forbidden) {
        this.forbidden = forbidden;
    }

    public Object getForbiddenTime() {
        return forbiddenTime;
    }

    public void setForbiddenTime(Object forbiddenTime) {
        this.forbiddenTime = forbiddenTime;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Object getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Object createTime) {
        this.createTime = createTime;
    }

}