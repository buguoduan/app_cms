package com.zxy.publish.controller;



import java.util.List;

import com.jfinal.core.Controller;
import com.zxy.publish.entity.Program;
import com.zxy.publish.service.TestService;
import com.zxy.publish.service.impl.TestServiceImpl;

public class UserController extends Controller {
	
	private static TestService testService =new TestServiceImpl();
	
	public void index(){
		renderHtml("<span style='color:red' >Hello world</span>");
		return;
	}
	
	/**
	  * @Discription:查询用户信息
	  * @return void
	  * @Author: zhouhezhen
	  * @ModifyDate: 2015年11月17日 下午4:22:54
	 */
	public void findUserManage(){
		try {
			/** 查询 */
			List<Program> program = this.testService.findProgram();
			this.setAttr("Users", program);
			renderJsp("../userManage.jsp");
			/** 返回 */
		} catch (Exception e) {
			e.printStackTrace();
			renderJson("code", "查询异常");
		}
	}
	
	/**
	 * 
	  * @Discription:查询修改用户信息
	  * @return void
	  * @Author: zhouhezhen
	  * @ModifyDate: 2015年11月17日 下午4:32:30
	 */
	public void findModifyUser(){
		try {
			/** 获取参数 */
			String id = null;
			try {
				id = (String) this.getPara("id");
			} catch (Exception e) {
				e.printStackTrace();
				renderJson("code", "用户id为空");
				return;
			}
			/** 查询 */
			Program program = this.testService.findModifyUser(id);
			this.setAttr("User", program);
			renderJsp("../userModify.jsp");
			/** 返回 */
		} catch (Exception e) {
			e.printStackTrace();
			renderJson("code", "查询异常");
		}
	}
	
	/**
	 * 
	  * @Discription:修改用户信息
	  * @return void
	  * @Author: zhouhezhen
	  * @ModifyDate: 2015年11月17日 下午4:32:30
	 */
	public void updateUser(){
		try {
			/** 获取参数 */
			String id = null;
			String nike=null;
			try {
				nike = (String) this.getPara("nike");
				id = (String) this.getPara("id");
			} catch (Exception e) {
				e.printStackTrace();
				renderJson("code", "用户id为空");
				return;
			}
			/** 查询 */
			 this.testService.updateUser(id, nike);
			 //重定向
			redirect("/user/findUserManage");
			/** 返回 */
		} catch (Exception e) {
			e.printStackTrace();
			renderJson("code", "查询异常");
		}
	}
	
}
