package com.ccms.pojo;

/**
 * 中间实体类
 * 甲等 实践类 30小时
 * 甲等 劳务类 20小时
 * 甲等 文体类 18小时
 * 
 * 乙等...
 * 
 * 丙等...
 * 
 * @author Geek_ymv
 */
public class RankActType {
	
	private Integer id;
	private Rank rank; // 所属等级
	private ActType activityType; // 所属活动类型
	private int duration;	// 时长
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Rank getRank() {
		return rank;
	}
	public void setRank(Rank rank) {
		this.rank = rank;
	}
	public ActType getActivityType() {
		return activityType;
	}
	public void setActivityType(ActType activityType) {
		this.activityType = activityType;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}

}
