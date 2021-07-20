package cn.whyx.dao.stationmapper;

import cn.whyx.pojo.Station;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Mapper
public interface StationMapper {
    /**
     * 查询全部岗位
     */
    public List<Station> selStation(@Param("station_name") String station_name)throws Exception;

    /**
     * 查看修改前岗位名称
     */
    public Station selStationname(@Param("id") int id)throws Exception;

    /**
     * 查询岗位总数
     */
    public Integer selcount()throws Exception;

    /**
     * 添加岗位
     */
    public int insstation_add(Station station)throws Exception;

    /**
     * 删除岗位
     */
    public int delStation(@RequestParam("id")int id)throws Exception;

    /**
     * 修改岗位
     */
    public Integer updStation(Station station)throws Exception;
}
