package cn.whyx.dao.user;

import cn.whyx.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
    public User login(@Param("username") String username, @Param("password") String password);
}
