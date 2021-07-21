package cn.whyx.service.task;


import cn.whyx.pojo.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface TaskService {
    /**
     * 查询所有信息
     */
    public List<Task> getAllList(@Param("matter") String matter) throws Exception;

    /**
     * 修改信息
     */
    public boolean update(Task task) throws Exception;

    public Task selById(Integer id) throws Exception;

    /**
     *删除指定用户
     */
    public int del(@Param("id") Integer id)throws Exception;

    /***
     * 添加信息
     */
    public boolean add(Task task)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount(@Param("matter") String matter)throws Exception;
}
