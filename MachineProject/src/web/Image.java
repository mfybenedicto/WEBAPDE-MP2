package web;



public class Image {
	
	private Boolean isPrivate;
	private int ID;
	private String thumbnail;
	private String url;
	private String title;
	private String description;
	private String uploader;
	private String[] tags;
	private String[] sharedUsers;
	
	
	public Image(Boolean privacy, int ID, String url, String thumbURL, String title, String description, String uploader, String[] tags, String[] sharedUsers){
		this.setPrivacy(privacy);
		this.setID(ID);
		this.thumbnail = thumbURL;
		this.url = url;
		this.title = title;
		this.setDescription(description);
		this.uploader = uploader;
		this.tags = tags;
		this.sharedUsers = sharedUsers;
	}
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public String geturl() {
		return url;
	}
	
	public void seturl(String url) {
		this.url = url;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUploader() {
		return uploader;
	}
	
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	
	public String[] getTags() {
		return tags;
	}
	
	public void setTags(String[] tags) {
		this.tags = tags;
	}
	
	public String[] getSharedUsers() {
		return sharedUsers;
	}
	
	public void setSharedUsers(String[] sharedUsers) {
		this.sharedUsers = sharedUsers;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getID() {
		return ID;
	}
	
	public void setID(int iD) {
		ID = iD;
	}
	
	public Boolean getPrivacy() {
		return isPrivate;
	}
	
	public void setPrivacy(Boolean privacy) {
		this.isPrivate = privacy;
	}
}
