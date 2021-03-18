package com.igeek.entity;

public class Notice {
    private Integer id;
    private String title;
    private String releaseDate;
    private String file;
    private String content;

    public Notice() {
    }

    public Notice(String title, String releaseDate,String content) {
        this.title = title;
        this.releaseDate = releaseDate;
        this.content = content;
    }

    public Notice(Integer id, String title, String releaseDate, String file, String content) {
        this.id = id;
        this.title = title;
        this.releaseDate = releaseDate;
        this.file = file;
        this.content = content;
    }

    /**
     * 获取
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取
     * @return releaseDate
     */
    public String getReleaseDate() {
        return releaseDate;
    }

    /**
     * 设置
     * @param releaseDate
     */
    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    /**
     * 获取
     * @return file
     */
    public String getFile() {
        return file;
    }

    /**
     * 设置
     * @param file
     */
    public void setFile(String file) {
        this.file = file;
    }

    /**
     * 获取
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
    }

    public String toString() {
        return "Notice{id = " + id + ", title = " + title + ", releaseDate = " + releaseDate + ", file = " + file + ", content = " + content + "}";
    }
}
