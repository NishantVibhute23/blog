/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.PageDetail;
import com.madhurisadgir.bean.Qualification;
import com.madhurisadgir.dao.CommonDao;
import com.madhurisadgir.enums.PageEnum;
import com.madhurisadgir.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class About extends ActionSupport {

    PageDetail personalDetail = new PageDetail();
    CommonDao commonDao = new CommonDao();
    List<String> desc2List = new ArrayList<>();
    private int uploadId;
    List<Qualification> qualList = new ArrayList<>();
    List<Integer> yearList = new ArrayList<>();
    Qualification qualification = new Qualification();
    int courseId;
    List<String> photoNames = new ArrayList<>();
    String ImageId;

    public About() {
    }

    @Override
    public String execute() {
        personalDetail = commonDao.getPageDetail(PageEnum.PersonalDetails.getId());
        String[] lines = personalDetail.getDesc2().split("\\r?\\n");
        desc2List = Arrays.asList(lines);
        qualList = commonDao.qualificationDetails();
        yearList = createYearList();
        getMyPhotos();
        return ActionSupport.SUCCESS;
    }

    public String updateQualification() {
        int count = commonDao.updateQualification(qualification);
        if (count > 0) {
            qualList = commonDao.qualificationDetails();
        }
        return ActionSupport.SUCCESS;
    }

    public String deleteQualification() {
        int count = commonDao.deleteQualification(courseId);
        if (count > 0) {
            qualList = commonDao.qualificationDetails();
        }
        return ActionSupport.SUCCESS;
    }

    public String updateDescFromAboutPage() {
        commonDao.pageDetailDesc(uploadId, personalDetail.getDesc1(), personalDetail.getDesc2());
        return SUCCESS;
    }

    public void getMyPhotos() {
        String filePath = CommonUtil.getResourceProperty("photos.path") + CommonUtil.getResourceProperty("myphotos.folder") + File.separator;
        File folder = new File(filePath);
        for (final File fileEntry : folder.listFiles()) {
            photoNames.add(fileEntry.getName());
        }
    }

    public String deleteMyPhoto() {
        String filePath = CommonUtil.getResourceProperty("photos.path") + CommonUtil.getResourceProperty("myphotos.folder") + File.separator + ImageId;

        File file = new File(filePath);

        if (file.delete()) {
            System.out.println("File deleted successfully");
        } else {
            System.out.println("Failed to delete the file");
        }
        return SUCCESS;
    }

    public List<Integer> createYearList() {
        int year = Calendar.getInstance().get(Calendar.YEAR);
        int from = year - 50;
        int to = year + 50;
        List<Integer> list = new ArrayList<Integer>();
        for (int i = from; i <= to; ++i) {
            list.add(i);
        }
        return list;
    }

    public PageDetail getPersonalDetail() {
        return personalDetail;
    }

    public void setPersonalDetail(PageDetail personalDetail) {
        this.personalDetail = personalDetail;
    }

    public List<String> getDesc2List() {
        return desc2List;
    }

    public void setDesc2List(List<String> desc2List) {
        this.desc2List = desc2List;
    }

    public int getUploadId() {
        return uploadId;
    }

    public void setUploadId(int uploadId) {
        this.uploadId = uploadId;
    }

    public List<Qualification> getQualList() {
        return qualList;
    }

    public void setQualList(List<Qualification> qualList) {
        this.qualList = qualList;
    }

    public List<Integer> getYearList() {
        return yearList;
    }

    public void setYearList(List<Integer> yearList) {
        this.yearList = yearList;
    }

    public Qualification getQualification() {
        return qualification;
    }

    public void setQualification(Qualification qualification) {
        this.qualification = qualification;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public List<String> getPhotoNames() {
        return photoNames;
    }

    public void setPhotoNames(List<String> photoNames) {
        this.photoNames = photoNames;
    }

    public String getImageId() {
        return ImageId;
    }

    public void setImageId(String ImageId) {
        this.ImageId = ImageId;
    }

}
