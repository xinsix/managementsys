package cn.whyx.service.task;


import cn.whyx.pojo.Task;
import cn.whyx.dao.task.TaskMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class TaskServicelmpl implements TaskService{

    @Resource
    public TaskMapper taskMapper;


    @Override
    public List<Task> getAllList(Task task) throws Exception {
        return taskMapper.getAllList(task);
    }

    @Override
    public boolean update(Task task) throws Exception {
        return (taskMapper.update(task)>0)?true:false;
    }

    @Override
    public Task selById(Integer id) throws Exception {
        return taskMapper.selById(id);
    }

    @Override
    public int del(Integer id) throws Exception {
        return taskMapper.del(id);
    }

    @Override
    public boolean add(Task task) throws Exception {
        boolean result=false;
        if (taskMapper.add(task)){
            result=true;
        }
        return result;
    }
}