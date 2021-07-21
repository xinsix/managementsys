package cn.whyx.service.carmanage;

import cn.whyx.dao.carmanage.CarManageMapper;
import cn.whyx.pojo.CarManage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CarManageServiceImpl implements CarManageService {
    @Resource
    private CarManageMapper mapper;

    @Override
    public List<CarManage> findCarManage(String licenseplate,Integer applicant) {
        return mapper.findCarManage(licenseplate, applicant);
    }

    @Override
    public boolean addCarManage(CarManage carManage) {
        return (mapper.addCarManage(carManage)>0)?true:false;
    }

    @Override
    public boolean updCarManage(CarManage carManage) {
        return (mapper.updCarManage(carManage)>0)?true:false;
    }

    @Override
    public boolean delCarManage(Integer id) {
        return (mapper.delCarManage(id)>0)?true:false;
    }

    @Override
    public CarManage selCarManageById(Integer id) {
        return mapper.selCarManageById(id);
    }

    @Override
    public Integer selcount(@Param("licenseplate") String licenseplate) throws Exception {
        return mapper.selcount(licenseplate);
    }
}
