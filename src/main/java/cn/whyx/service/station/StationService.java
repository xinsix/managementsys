package cn.whyx.service.station;

import cn.whyx.pojo.Station;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface StationService {
    /**
     * 查询全部岗位
     */
    public List<Station> selStation(@Param("station_name") String station_name)throws Exception;

    /**
     * 查看修改前部门名称
     */
    public Station selStationname(@Param("id") int id)throws Exception;

    /**
     * 查询部门总数
     */
    public Integer selcount()throws Exception;

    /**
     * 添加岗位
     */
    public boolean insstation_add(Station station)throws Exception;

    /**
     * 删除公告
     */
    public boolean delStation(@RequestParam("id")int id)throws Exception;

    /**
     * 修改公告
     */
    public boolean updStation(Station station)throws Exception;
}
