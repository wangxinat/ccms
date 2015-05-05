package com.ccms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ccms.base.dao.BaseDAO;
import com.ccms.persistence.dto.Pager;
import com.ccms.persistence.dto.StudentDto;
import com.ccms.persistence.pojo.Student;

public interface StudentDAO extends BaseDAO<Student>{
	/**
	 * 根据学号查询
	 * @param num
	 * @return
	 */
	public Student queryByNum(String num);
	
	/**
	 * 根据学号和密码查询
	 * @param num
	 * @param pwd
	 * @return
	 */
	public Student queryByNumAndPwd(@Param("num")String num, @Param("pwd")String pwd);

	/**
	 * 根据活动id查看报名学生
	 * @param actId
	 * @return
	 */
	public List<StudentDto> queryByActivityId(Integer actId);
	
	/**
	 * 根据活动id查看报名学生总记录数
	 * @param actId
	 * @return
	 */
	public int getTotalRecordByActivityId(Integer actId);
	
	/**
	 * 根据学院id查看学生
	 * @param pager
	 * @param colId
	 * @return
	 */
	public List<Student> queryStudentsByColId(@Param("pager")Pager<Student> pager, 
			@Param("colId")Integer colId);
	
	/**
	 * 根据学院id查看学生总记录数
	 * @param colId
	 * @return
	 */
	public int getTotalStudentsByColId(Integer colId);
	
}
