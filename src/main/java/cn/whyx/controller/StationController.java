package cn.whyx.controller;

import cn.whyx.pojo.Station;
import cn.whyx.service.station.StationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/station")
public class StationController {

    @Resource
   private StationService stationService;

    /**
     * 查询全部岗位
     */
    @GetMapping("/selstation")
    public String selInfoManage(Model model, @RequestParam(required = false)String station_name)throws Exception{
        List<Station> list = stationService.selStation(station_name);
        Integer count = stationService.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "station/station_list";
    }

    /**
     * 查询修改前的岗位名称
     */
    @RequestMapping("/selStationname/{id}")
    public String selStationname(Model model,@PathVariable Integer id)throws Exception{
        Station station = stationService.selStationname(id);
        model.addAttribute("stationMapper",station);
        return "station/station_upd";
    }

    /**
     * 添加岗位
     */
    @ResponseBody
    @PostMapping("/insstation_add")
    public Object insstation_add(@RequestParam String station_name)throws Exception{
            Station station = new Station();
            station.setStation_name(station_name);
            return stationService.insstation_add(station);
    }
    /**
     * 删除岗位
     */
    @ResponseBody
    @RequestMapping("/delstation")
    public Object delstation(@RequestParam("id")int id)throws Exception{
        boolean bool = stationService.delStation(id);
        return bool;
    }

    /**
     * 修改岗位
     */
    @ResponseBody
    @RequestMapping("/updStation")
    public Object updStation(@RequestParam String station_name,@RequestParam Integer id)throws Exception{//修改公告
        Station station = new Station();
        station.setStation_name(station_name);
        station.setId(id);
        boolean bool = stationService.updStation(station);
        return bool;
    }


}
