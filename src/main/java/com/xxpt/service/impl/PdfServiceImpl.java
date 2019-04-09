package com.xxpt.service.impl;

import com.xxpt.bean.Pdf;
import com.xxpt.bean.PdfExample;
import com.xxpt.dao.PdfMapper;
import com.xxpt.service.IPdfService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

    public void delete(int id) throws Exception {
        int i = pdfMapper.deleteByPrimaryKey(id);
        if (i != 1){
            throw new Exception("删除失败！");
        }
    }

    public List<Pdf> findAllPdf() throws Exception {
        PdfExample example = new PdfExample();
        example.setOrderByClause("pdf_time");
        List<Pdf> pdfs = pdfMapper.selectByExample(example);
        return pdfs;
    }
}
