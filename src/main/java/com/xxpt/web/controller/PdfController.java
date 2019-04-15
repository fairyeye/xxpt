package com.xxpt.web.controller;

import com.xxpt.bean.Pdf;
import com.xxpt.bean.User;
import com.xxpt.service.IPdfService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

@Controller
public class PdfController {
    @Resource
    private IPdfService pdfService;

    @PostMapping("/pdfupload")
    public String pdfUpload(@RequestParam("file") CommonsMultipartFile file, HttpSession session, HttpServletRequest request){
        String originalFilename = file.getOriginalFilename();
        //避免用户不选择文件直接上传的问题
        if ("".equals(originalFilename.trim())){
            String msg = "请选择要上传的文件!";
            request.setAttribute("msg",msg);
            return "courseware";
        }
        ServletContext sc = session.getServletContext();
        String path = sc.getRealPath("/pdf") + "\\";
        //增加负担，暂时不上传
       File f = new File(path);
        if (!f.exists()) {
            f.mkdirs();
        }
        if (!file.isEmpty()) {
            try {
                FileOutputStream fos = new FileOutputStream(path + originalFilename);
                InputStream in = file.getInputStream();
                int b;
                while ((b = in.read()) != -1) {
                    fos.write(b);
                }
                fos.close();
                in.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Pdf pdf = new Pdf();
        pdf.setPdfName(originalFilename);
        pdf.setPdfPath(path + originalFilename);
        User user = (User) session.getAttribute("user");
        if ("0".equals(user.getuId())){
            pdf.setPdfAuthor("管理员");
        }else {
            pdf.setPdfAuthor(user.getuId());
        }
        System.out.println(pdf);
        try {
            pdfService.save(pdf);
        } catch (Exception e) {
            request.setAttribute("msg",e.getMessage());
            return "exception";
        }
        return "addsuccess";
    }

    @RequestMapping("/findallpdf")
    public String findAllPdf(HttpSession session, HttpServletRequest request){
        try {
            List<Pdf> allPdf = pdfService.findAllPdf();
            session.setAttribute("pdfs",allPdf);
            return "courseware";
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/pdfdownload/{pdfId}")
    public String downLoad(@PathVariable int pdfId, HttpServletResponse response,HttpSession session, HttpServletRequest request){
        FileInputStream is = null;
        OutputStream os = null;
        System.out.println(pdfId);
        try {
            Pdf pdf = pdfService.findOnePdf(pdfId);
            is = new FileInputStream(new File(pdf.getPdfPath()));
            String filename = new String(pdf.getPdfName().getBytes(), "ISO-8859-1");
            // 1.ContentType类型，这样设置，会自动判断下载文件类型
            response.setContentType("multipart/form-data");
            // 2.设置文件头：最后一个参数是设置下载文件名
            response.setHeader("Content-Disposition", "attachment;fileName="+filename);
            os = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int i = -1;
            while ((i = is.read(buffer)) != -1){
                os.write(buffer,0,i);
            }
            os.flush();
            os.close();
            is.close();
            return "courseware";
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/pdfdelete/{pdfId}")
    public String pdfDelete(@PathVariable int pdfId , HttpServletRequest request){
        try {
            pdfService.delete(pdfId);
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
        return "redirect:/deletesuccess";
    }
}
