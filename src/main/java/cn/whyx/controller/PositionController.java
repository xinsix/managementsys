package cn.whyx.controller;

import cn.whyx.pojo.Position;
import cn.whyx.service.positionservice.PositionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/position")
public class PositionController {
    @Resource
    private PositionService service;

    /**
     * 查询全部职能
     */
    @GetMapping("/selPosition")
    public String selPosition(Model model, @RequestParam(required = false)String position_name)throws Exception{
        List<Position> list = service.selPosition(position_name);
        Integer count = service.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "/position/position_list";
    }

    /**
     * 查询修改前的职能名称
     */
    @RequestMapping("/selPositionname/{id}")
    public String selPositionname(Model model,@PathVariable Integer id)throws Exception{
        Position Position = service.selPositionname(id);
        model.addAttribute("PositionMapper",Position);
        return "position/position_upd";
    }

    /**
     * 添加职能
     */
    @ResponseBody
    @PostMapping("/insPosition_add")
    public Object insPosition_add(@RequestParam String position_name)throws Exception{
        Position Position = new Position();
        Position.setPosition_name(position_name);
        return service.insPosition_add(Position);
    }
    /**
     * 删除职能
     */
    @ResponseBody
    @RequestMapping("/delPosition")
    public Object delPosition(@RequestParam("id")int id)throws Exception{
        boolean bool = service.delPosition(id);
        return bool;
    }

    /**
     * 修改职能
     */
    @ResponseBody
    @RequestMapping("/updPosition")
    public Object updPosition(@RequestParam String position_name,@RequestParam Integer id)throws Exception{//修改职能
        Position Position = new Position();
        Position.setPosition_name(position_name);
        Position.setId(id);
        boolean bool = service.updPosition(Position);
        return bool;
    }

}
