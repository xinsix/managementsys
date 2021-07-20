package cn.whyx.service.positionservice;

import cn.whyx.dao.position.PositionMapper;
import cn.whyx.pojo.Position;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PositionServiceImpl implements PositionService {

    @Resource
    private PositionMapper mapper;

    @Override
    public List<Position> selPosition(String position_name) throws Exception {
        return mapper.selPosition(position_name);
    }

    @Override
    public Position selPositionname(int id) throws Exception {
        return mapper.selPositionname(id);
    }

    @Override
    public Integer selcount() throws Exception {
        return mapper.selcount();
    }

    @Override
    public boolean insPosition_add(Position Position) throws Exception {
        boolean bool = false;
        try{
            if (mapper.insPosition_add(Position)>0){
                bool = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean delPosition(int id) throws Exception {
        boolean bool = false;
        try {
            if (mapper.delPosition(id)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean updPosition(Position Position) throws Exception {
        return (mapper.updPosition(Position)>0)?true:false;
    }
}
