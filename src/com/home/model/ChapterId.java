package com.home.model;

/**
 * ChapterId entity. @author MyEclipse Persistence Tools
 */

public class ChapterId implements java.io.Serializable {

	// Fields

	private Integer bookid;
	private Integer chapterid;
	private String title;
	private String content;

	// Constructors

	/** default constructor */
	public ChapterId() {
	}

	/** full constructor */
	public ChapterId(Integer bookid, Integer chapterid, String title,
			String content) {
		this.bookid = bookid;
		this.chapterid = chapterid;
		this.title = title;
		this.content = content;
	}

	// Property accessors

	public Integer getBookid() {
		return this.bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public Integer getChapterid() {
		return this.chapterid;
	}

	public void setChapterid(Integer chapterid) {
		this.chapterid = chapterid;
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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ChapterId))
			return false;
		ChapterId castOther = (ChapterId) other;

		return ((this.getBookid() == castOther.getBookid()) || (this
				.getBookid() != null && castOther.getBookid() != null && this
				.getBookid().equals(castOther.getBookid())))
				&& ((this.getChapterid() == castOther.getChapterid()) || (this
						.getChapterid() != null
						&& castOther.getChapterid() != null && this
						.getChapterid().equals(castOther.getChapterid())))
				&& ((this.getTitle() == castOther.getTitle()) || (this
						.getTitle() != null && castOther.getTitle() != null && this
						.getTitle().equals(castOther.getTitle())))
				&& ((this.getContent() == castOther.getContent()) || (this
						.getContent() != null && castOther.getContent() != null && this
						.getContent().equals(castOther.getContent())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getBookid() == null ? 0 : this.getBookid().hashCode());
		result = 37 * result
				+ (getChapterid() == null ? 0 : this.getChapterid().hashCode());
		result = 37 * result
				+ (getTitle() == null ? 0 : this.getTitle().hashCode());
		result = 37 * result
				+ (getContent() == null ? 0 : this.getContent().hashCode());
		return result;
	}

}