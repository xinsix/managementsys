package cn.whyx.service.detailedprocess;

import cn.whyx.pojo.Detailedprocess;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 流程详细service
 */
public interface DetailedprocessService {

    /**
     * 根据procedure_id查询流程详细
     * @return
     */
    List<Detailedprocess> findDetailedprocess(@Param("procedure_id") Integer procedure_id);

    /**
     * 添加流程详细
     * @param detailedprocess
     * @return
     */
    boolean addDetailedprocess(Detailedprocess detailedprocess);
    /**
     * 修改流程详细
     * @param detailedprocess
     * @return
     */
    boolean updDetailedprocess(Detailedprocess detailedprocess);
    /**
     * 删除流程详细
     * @param id
     * @return
     */
    boolean delDetailedprocess(@Param("id") Integer id);

}
