package cn.whyx.service.positionservice;

import cn.whyx.pojo.Position;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface PositionService {
    /**
     * 查询全部职能
     */
    public List<Position> selPosition(@Param("position_name") String position_name)throws Exception;

    /**
     * 查看修改前职能名称
     */
    public Position selPositionname(@Param("id") int id)throws Exception;

    /**
     * 查询职能总数
     */
    public Integer selcount()throws Exception;

    /**
     * 添加职能
     */
    public boolean insPosition_add(Position Position)throws Exception;

    /**
     * 删除职能
     */
    public boolean delPosition(@RequestParam("id")int id)throws Exception;

    /**
     * 修改职能
     */
    public boolean updPosition(Position Position)throws Exception;
}
