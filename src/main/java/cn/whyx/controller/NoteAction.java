package cn.whyx.controller;

import cn.whyx.pojo.Note;
import cn.whyx.service.note.NoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/note")
public class NoteAction {

    @Resource
    private NoteService noteService;

    /**
     * 查询所有信息
     */
    @RequestMapping(value = "/find")
    public String getAllList(Model model,@RequestParam(required = false) String notecontent) throws Exception {
        List<Note> list = noteService.getAllList(notecontent);
        model.addAttribute("list", list);
        return "communitylist/communitylist";
    }


    @RequestMapping("/selById/{id}")
    public String selById(@PathVariable Integer id,
                          Model model)throws Exception{
        Note note = noteService.selById(id);
        model.addAttribute("note",note);
        return "/communitylist/communitymodify";

}
    /**
     * 修改信息
     */
    @PostMapping("/upd")
    @ResponseBody
    public Object upd(Note note)throws Exception{
        note.setRevisiontime(new Date());
        return noteService.update(note);
    }

    /**
     * 删除指定用户
     */
    @GetMapping("/del")
    @ResponseBody
    public Object del(@RequestParam Integer id)throws Exception{
        return noteService.del(id);
    }

    /**
     * 添加信息
     */
    @PostMapping("/add")
    @ResponseBody
    public Object add(Note note) throws  Exception{
        /*System.out.println("Hello World");
        System.out.println(note.getId());*/
        note.setCreationtime(new Date());
        return noteService.add(note);
    }
    @RequestMapping("/toAdd")
    public String toAdd(){return "add";}
}
