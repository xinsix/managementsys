package cn.whyx.dao.penson;

import cn.whyx.pojo.Penson;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PensonMapper {
    public Penson login(@Param("username") String username, @Param("password") String password);
}
