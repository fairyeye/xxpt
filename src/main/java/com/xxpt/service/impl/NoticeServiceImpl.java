package com.xxpt.service.impl;

import com.xxpt.bean.Notice;
import com.xxpt.bean.NoticeExample;
import com.xxpt.dao.NoticeMapper;
import com.xxpt.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
@Service
public class NoticeServiceImpl implements INoticeService {

    @Autowired
    private NoticeMapper noticeMapper;

    public List<Notice> findAllNotice() throws Exception {
        SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
        NoticeExample example = new NoticeExample();
        example.setOrderByClause("n_time desc");
        List<Notice> notices = noticeMapper.selectByExample(example);
        return notices;
    }

    public void deleteById(int nId) throws Exception {
        Notice notice = selectById(nId);
        noticeMapper.deleteByPrimaryKey(nId);
    }

    public Notice selectById(int nId) throws Exception {
        Notice notice = noticeMapper.selectByPrimaryKey(nId);
        if (notice == null ){
            throw new Exception("该公告不存在！");
        }
        return notice;
    }

    public void add(Notice notice) throws Exception {
        Date date = new Date();
        Timestamp timeStamep = new Timestamp(date.getTime());
        notice.setnTime(timeStamep);
        noticeMapper.insert(notice);
    }
}
