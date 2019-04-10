package com.xxpt.service.impl;

import com.xxpt.bean.Pdf;
import com.xxpt.bean.PdfExample;
import com.xxpt.dao.PdfMapper;
import com.xxpt.service.IPdfService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class PdfServiceImpl implements IPdfService {
    @Resource
    private PdfMapper pdfMapper;
    public void save(Pdf pdf) throws Exception {
        Date date = new Date();
        Timestamp timeStamep = new Timestamp(date.getTime());
        pdf.setPdfTime(timeStamep);
        int i = pdfMapper.insert(pdf);
        if (i != 1){
            throw new Exception("上传失败！");
        }
    }

    public void delete(int pdfId) throws Exception {
        Pdf pdf = pdfMapper.selectByPrimaryKey(pdfId);
        if (pdf == null){
            throw new Exception("课件不存在！");
        }
        int i = pdfMapper.deleteByPrimaryKey(pdfId);
        if (i != 1){
            throw new Exception("删除失败！");
        }

        File file = new File(pdf.getPdfPath());
        // 如果文件路径所对应的文件存在，并且是一个文件，则直接删除
        if (file.exists() && file.isFile()) {
            if (!file.delete()) {
                throw new Exception("删除失败！");
            }
        }
    }

    public List<Pdf> findAllPdf() throws Exception {
        PdfExample example = new PdfExample();
        example.setOrderByClause("pdf_time");
        List<Pdf> pdfs = pdfMapper.selectByExample(example);
//        for (Pdf pdf:pdfs){
//            System.out.println(pdf);
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        }
        return pdfs;
    }

    public Pdf findOnePdf(int pdfId) throws Exception {
        Pdf pdf = pdfMapper.selectByPrimaryKey(pdfId);
        if (pdf == null){
            throw new Exception("课件不存在！");
        }
        return pdf;
    }
}
