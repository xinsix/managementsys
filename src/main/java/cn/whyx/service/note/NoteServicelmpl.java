package cn.whyx.service.note;

import cn.whyx.dao.note.NoteMapper;
import cn.whyx.pojo.Note;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NoteServicelmpl implements NoteService{

    @Resource
    private NoteMapper noteMapper;

    @Override
    public List<Note> getAllList(String notecontent) throws Exception {
        return noteMapper.getAllList(notecontent);
    }

    @Override
    public int update(Note note) throws Exception {
        return noteMapper.update(note);
    }

    @Override
    public Note selById(Integer id) throws Exception {
        return noteMapper.selById(id);
    }

    @Override
    public int del(Integer id) throws Exception {
        return noteMapper.del(id);
    }

    @Override
    public boolean add(Note note) throws Exception {
        boolean result=false;
        if (noteMapper.add(note)){
            result=true;
        }
        return result;
    }
}
