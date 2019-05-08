/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.util.CommonUtil;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author nishant.vibhute
 */
public class ImageAction extends ActionSupport implements ServletRequestAware {

    byte[] imageInByte = null;
    String imageId;
    public String fileType;

    private HttpServletRequest servletRequest;

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public ImageAction() {
        System.out.println("ImageAction");
    }

    public String execute() {
        return SUCCESS;
    }

    public byte[] getCustomImageInBytes() {

        BufferedImage originalImage;
        try {
            String ext = FilenameUtils.getExtension(this.imageId);
            fileType = "image/" + ext;
            originalImage = ImageIO.read(getImageFile(this.imageId));
            // convert BufferedImage to byte array
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(originalImage, ext, baos);
            baos.flush();
            imageInByte = baos.toByteArray();
            baos.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return imageInByte;
    }

    private File getImageFile(String imageId) {
//        String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
        File file = new File(CommonUtil.getResourceProperty("photos.path"), imageId);
        System.out.println(file.toString());
        return file;
    }

    public String getCustomContentType() {
        return fileType;
    }
//
//    public String getCustomContentDisposition() {
//        return "anyname.png";
//    }

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.servletRequest = request;

    }

}
