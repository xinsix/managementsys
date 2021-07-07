package cn.whyx.service.user;


import cn.whyx.pojo.User;


public interface UserService {
    public User login(String username, String password);
}
