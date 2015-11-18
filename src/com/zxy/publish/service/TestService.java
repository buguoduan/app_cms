package com.zxy.publish.service;

import java.util.List;

import com.zxy.publish.entity.Program;

public interface TestService {
	
	/* this is demo**/
	List<Program> findProgram() throws Exception;
	//查询修改信息
	Program findModifyUser(String id) throws Exception;
	//修改
	void updateUser(String id,String nike) throws Exception;
}
