package com.rp.myweb.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MyWebSQLMapperInterface {

	@Select("select t.* from mytest t ")
	public List<Map<String, Object>> queryUser();

	@Select("select t.id,t.name,t.sex,t.password,t.email,t.type,t.createtime "
			+ "from (select mytest.*, row_number() over (order by mytest.createtime asc) as n from mytest) t "
			+ "where n between #{startRownumber} and #{endRownumber}")
	public List<Map<String, Object>> queryUserList(Map<String, Object> parameters);

	@Insert("insert into mytest(id,name,sex,password,email,type,createtime) "
			+ "values (#{userId},#{userName},#{sex},#{password},#{email},#{type},"
			+ "to_char(sysdate,'YYYY-MM-DD HH24:MI:SS'))")
	public boolean addUser(Map<String, Object> parameters);

	@Delete("delete from mytest t where t.id= #{userId}")
	public boolean deleteUser(Map<String, Object> parameters);

	@Update("update mytest t set t.name = #{userName},t.sex = #{sex}, t.password = #{password},"
			+ "t.email = #{email},t.type = #{type} where t.id = #{userId}")
	public boolean editUser(Map<String, Object> parameters);


}
