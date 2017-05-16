package com.home.model;

/**
 * Chapter entity. @author MyEclipse Persistence Tools
 */

public class Chapter implements java.io.Serializable {

	// Fields

	private Integer chapterid;
	private Integer bookid;
	private String title;
	private String content;

	// Constructors

	/** default constructor */
	public Chapter() {
	}

	/** full constructor */
	public Chapter(Integer bookid, String title, String content) {
		this.bookid = bookid;
		this.title = title;
		this.content = content;
	}

	// Property accessors

	public Integer getChapterid() {
		return this.chapterid;
	}

	public void setChapterid(Integer chapterid) {
		this.chapterid = chapterid;
	}

	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}