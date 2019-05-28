/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.util;

import com.madhurisadgir.bean.QuestionBean;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

/**
 *
 * @author nishant.vibhute
 */
public class NetSetExcelUtil {

    public List<QuestionBean> readFile(File inputFile) {
        List<QuestionBean> questionList = new ArrayList<>();
        try {

            FileInputStream file = new FileInputStream(inputFile);

            //Create Workbook instance holding reference to .xlsx file
            Workbook workbook = WorkbookFactory.create(file);

            //Get first/desired sheet from the workbook
            Sheet sheet = workbook.getSheetAt(0);

            //Iterate through each rows one by one
            Iterator<Row> rowIterator = sheet.iterator();
            if (rowIterator.hasNext()) {
                rowIterator.next();
            }

            while (rowIterator.hasNext()) {
                QuestionBean qb = new QuestionBean();
                Row row = rowIterator.next();

                qb.setId((int) row.getCell(0).getNumericCellValue());
                qb.setQuestion(row.getCell(1).getStringCellValue());
                qb.setOptionA(row.getCell(2) == null ? "" : row.getCell(2).getStringCellValue());
                qb.setOptionB(row.getCell(3) == null ? "" : row.getCell(3).getStringCellValue());
                qb.setOptionC(row.getCell(4) == null ? "" : row.getCell(4).getStringCellValue());
                qb.setOptionD(row.getCell(5) == null ? "" : row.getCell(5).getStringCellValue());
                qb.setAnswer(row.getCell(6).getStringCellValue());
                questionList.add(qb);
            }
            file.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return questionList;
    }

}
