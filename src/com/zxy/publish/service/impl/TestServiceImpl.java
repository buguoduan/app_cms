package com.zxy.publish.service.impl;


import java.util.List;

import com.zxy.publish.entity.Program;
import com.zxy.publish.service.TestService;


public class TestServiceImpl  implements TestService{
	
	/**
	 * 
	  * @Discription:demo 查询所有用户信息
	  * @Author: zhouhezhen
	  * @Date: 2015年11月17日 下午4:30:57
	  * @see com.zxy.publish.service.TestService#findProgram()
	 */
	@Override
	public List<Program> findProgram()
			throws Exception {
		List<Program> result =null;
		try{
			result = Program.dao.find("select * from program");
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 
	  * @Discription:查询修改用户信息
	  * @Author: zhouhezhen
	  * @Date: 2015年11月17日 下午4:33:02
	  * @see com.zxy.publish.service.TestService#modifyUser()
	 */
	@Override
	public Program findModifyUser(String id) throws Exception {
		Program program =null;
		try{
			program = Program.dao.findById(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return program;
	}
	
	/**
	 * 
	  * @Discription:修改用户信息
	  * @Author: zhouhezhen
	  * @ModifyDate: 2015年11月18日 上午9:09:19
	  * @see com.zxy.publish.service.TestService#updateUser(java.lang.String, java.lang.String)
	 */
	@Override
	public void updateUser(String id, String nike) throws Exception {
		try{
			Program program =new Program();
			program.set("nike", nike);
			program.set("id", id);
			program.update();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
