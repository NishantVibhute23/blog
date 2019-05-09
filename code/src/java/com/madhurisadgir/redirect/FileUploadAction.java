/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.dao.CommonDao;
import com.madhurisadgir.enums.PageEnum;
import com.madhurisadgir.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author nishant.vibhute
 */
public class FileUploadAction extends ActionSupport {

    private File userImage;
    private String userImageContentType;
    private String userImageFileName;
    private int uploadId;
    private String desc1;
    private String desc2;

    CommonDao commonDao = new CommonDao();

    public String execute() {

        String filePath = CommonUtil.getResourceProperty("photos.path");
        String ext = FilenameUtils.getExtension(userImageFileName);
        String newFileName = PageEnum.getEnumByCode(uploadId) + "." + ext;
        File fileToCreate = new File(filePath, newFileName);

        try {
            FileUtils.copyFile(userImage, fileToCreate);
            int count = commonDao.uploadPageDetailImage(uploadId, newFileName);
        } catch (IOException ex) {
            Logger.getLogger(FileUploadAction.class.getName()).log(Level.SEVERE, null, ex);
        }

        return SUCCESS;
    }

    public String updateDesc() {
        if (uploadId == PageEnum.Home.getId()) {
            desc2 = "";
        }
        commonDao.pageDetailDesc(uploadId, desc1, desc2);
        return SUCCESS;
    }

    public File getUserImage() {
        return userImage;
    }

    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }

    public String getUserImageContentType() {
        return userImageContentType;
    }

    public void setUserImageContentType(String userImageContentType) {
        this.userImageContentType = userImageContentType;
    }

    public String getUserImageFileName() {
        return userImageFileName;
    }

    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
    }

    public int getUploadId() {
        return uploadId;
    }

    public void setUploadId(int uploadId) {
        this.uploadId = uploadId;
    }

    public String getDesc1() {
        return desc1;
    }

    public void setDesc1(String desc1) {
        this.desc1 = desc1;
    }

    public String getDesc2() {
        return desc2;
    }

    public void setDesc2(String desc2) {
        this.desc2 = desc2;
    }

}
