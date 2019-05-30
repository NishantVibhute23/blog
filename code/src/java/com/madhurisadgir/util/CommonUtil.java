/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.util;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.websocket.Session;

/**
 *
 * @author nishant.vibhute
 */
public class CommonUtil {

    public static Properties prop = new Properties();
    public static Map<Integer, Session> userSession;
    public static String templatePath;

    public CommonUtil(String path) {
        try {
            userSession = new HashMap<>();
            prop.load(new FileInputStream(path));
        } catch (Exception ex) {
            Logger.getLogger(CommonUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static String getResourceProperty(String propertyName) throws MissingResourceException {
        return prop.getProperty(propertyName);
    }
}
