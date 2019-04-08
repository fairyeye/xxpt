package com.xxpt.service;

import com.xxpt.bean.Notice;

import java.util.List;

public interface INoticeService {
    /**
     *
     * @return
     * @throws Exception
     */
    List<Notice> findAllNotice() throws Exception;

    /**
     *
     * @param nId
     * @throws Exception
     */
    void deleteById(int nId) throws Exception;

    /**
     *
     * @param nId
     * @return
     * @throws Exception
     */
    Notice selectById(int nId) throws Exception;

    /**
     *
     * @param notice
     * @throws Exception
     */
    void add(Notice notice) throws Exception;
}
