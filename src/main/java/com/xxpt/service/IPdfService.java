package com.xxpt.service;


import com.xxpt.bean.Pdf;

import java.util.List;

public interface IPdfService {
    void save(Pdf pdf) throws Exception;
    void delete(int id) throws Exception;
    List<Pdf> findAllPdf() throws Exception;
}
