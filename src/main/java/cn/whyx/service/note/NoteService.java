package cn.whyx.service.note;

import cn.whyx.pojo.Note;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoteService {
    /**
     * 查询所有信息
     */
    public List<Note> getAllList(String notecontent) throws Exception;

    /**
     * 修改信息
     */
    public boolean update(Note note) throws Exception;

    public Note selById(Integer id) throws Exception;

    /**
     *删除指定用户
     */
    public int del(@Param("id") Integer id)throws Exception;

    /***
     * 添加信息
     */
    public boolean add(Note note)throws Exception;
}
