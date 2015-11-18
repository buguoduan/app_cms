package com.zxy.publish.entity;

import com.jfinal.plugin.activerecord.Model;

public class Article extends Model<Article>{

	/**
	 * @Field: serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	
	public static Article dao = new Article();

}
