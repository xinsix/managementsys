package cn.whyx.service.station;

import cn.whyx.dao.stationmapper.StationMapper;
import cn.whyx.pojo.Station;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StationServiceImpl implements StationService{

    @Resource
    private StationMapper stationMapper;

    @Override
    public List<Station> selStation(String station_name) throws Exception {
        return stationMapper.selStation(station_name);
    }

    @Override
    public Station selStationname(int id) throws Exception {
        return stationMapper.selStationname(id);
    }

    @Override
    public Integer selcount() throws Exception {
        return stationMapper.selcount();
    }

    @Override
    public boolean insstation_add(Station station) throws Exception {
        boolean bool = false;
        try{
            if (stationMapper.insstation_add(station)>0){
                bool = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean delStation(int id) throws Exception {
        boolean bool = false;
        try {
            if (stationMapper.delStation(id)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean updStation(Station station) throws Exception {
        return (stationMapper.updStation(station)>0)?true:false;
    }
}
