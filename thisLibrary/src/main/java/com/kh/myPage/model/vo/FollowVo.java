package com.kh.myPage.model.vo;

public class FollowVo {

	private int followerId;
	private int followingId;
	
	
	public FollowVo() {}


	public FollowVo(int followerId, int followingId) {
		super();
		this.followerId = followerId;
		this.followingId = followingId;
	}


	public int getFollowerId() {
		return followerId;
	}


	public void setFollowerId(int followerId) {
		this.followerId = followerId;
	}


	public int getFollowingId() {
		return followingId;
	}


	public void setFollowingId(int followingId) {
		this.followingId = followingId;
	}


	@Override
	public String toString() {
		return "FollowVo [followerId=" + followerId + ", followingId=" + followingId + "]";
	}
	
}
