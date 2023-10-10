package com.atchensong.utils;

import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @className: MyContextListener.java
 * @author: 20141
 * @version: 1.0.0
 * @Date: 2023/01/05 下午 09:31
 */
public class MyContextListener implements ServletContextListener {
    //此监听类作用为解决热部署和停止tomcat时发生的Abandoned废弃线程未清理，导致console报错
    //
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("webService start!事件："+servletContextEvent.toString());
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("webService stop!");
        try {
            while (DriverManager.getDrivers().hasMoreElements()){
                //deregister 取消注册
                DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            }
            System.out.println("jdbc Driver close");
            AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("clean Thread success!");
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
