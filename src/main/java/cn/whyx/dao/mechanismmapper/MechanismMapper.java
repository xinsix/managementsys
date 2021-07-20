package cn.whyx.dao.mechanismmapper;

import cn.whyx.pojo.OrganManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Mapper
public interface MechanismMapper {
    /**
     * 查询全部架构
     */
    public List<OrganManage> selOrgan(@Param("position_name") String position_name)throws Exception;

    /**
     * 查看修改前架构名称
     */
    public OrganManage selOrganname(@Param("id") int id)throws Exception;

    /**
     * 查询职能架构
     */
    public Integer selcount()throws Exception;

    /**
     * 添加架构
     */
    public int insOrgan_add(OrganManage organManage)throws Exception;

    /**
     * 删除架构
     */
    public int delOrgan(@RequestParam("id")int id)throws Exception;

    /**
     * 修改架构
     */
    public Integer updOrgan(OrganManage organManage)throws Exception;
}
