package cn.whyx.service.detailedprocess;

import cn.whyx.dao.detailedprocess.DetailedprocessMappper;
import cn.whyx.pojo.Detailedprocess;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DetailedprocessServiceImpl implements DetailedprocessService {
    @Resource
    private DetailedprocessMappper mappper;


    @Override
    public List<Detailedprocess> findDetailedprocess(Integer procedure_id) {
        return mappper.findDetailedprocess(procedure_id);
    }

    @Override
    public boolean addDetailedprocess(Detailedprocess detailedprocess) {
        return (mappper.addDetailedprocess(detailedprocess)>0)?true:false;
    }

    @Override
    public boolean updDetailedprocess(Detailedprocess detailedprocess) {
        return (mappper.updDetailedprocess(detailedprocess)>0)?true:false;
    }

    @Override
    public boolean delDetailedprocess(Integer id) {
        return (mappper.delDetailedprocess(id)>0)?true:false;
    }
}
