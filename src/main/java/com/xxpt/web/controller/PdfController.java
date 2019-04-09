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
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

@Controller
public class PdfController {
    @Resource
    private IPdfService pdfService;

    @PostMapping("/pdfupload")
    public String pdfUpload(@RequestParam("file") CommonsMultipartFile file, HttpSession session){
        String originalFilename = file.getOriginalFilename();
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
            e.printStackTrace();
        }
        return "addsuccess";
    }

    @RequestMapping("/findallpdf")
    public String findAllPdf(HttpSession session){
        try {
            List<Pdf> allPdf = pdfService.findAllPdf();
            session.setAttribute("pdfs",allPdf);
            return "courseware";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/pdfdownload/{pdfName}")
    public String downLoad(@PathVariable String pdfName, HttpServletResponse response){
        System.out.println(pdfName);
        FileInputStream is = null;
        OutputStream os = null;
        try {
            is = new FileInputStream(new File("D:\\workspace\\XXPT3.0\\target\\XXPT3.0\\pdf\\SQL规范.pptx"));
            String filename = new String(pdfName.getBytes(), "ISO-8859-1");
            // 1.ContentType类型，这样设置，会自动判断下载文件类型
            response.setContentType("multipart/form-data");
            // 2.设置文件头：最后一个参数是设置下载文件名
            response.setHeader("Content-Disposition", "attachment;fileName="+filename+".pptx");
            os = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int i = -1;
            while ((i = is.read(buffer)) != -1){
                os.write(buffer,0,i);
            }
            os.flush();
            os.close();
            is.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "courseware";
    }
}
