/*
package com.xxpt.common.service;

import com.banksteel.training.common.dao.BaseDao;
import com.banksteel.training.common.model.BaseModel;
import com.banksteel.training.common.utils.CommonUtils;
import com.banksteel.training.common.utils.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.PostConstruct;
import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

*/
/**
 * 通用Service接口抽象层
 *
 * @author 杨新伦
 * @date 2019-03-12
 *//*

@Slf4j
public abstract class AbstractService<T extends BaseModel> implements BaseService<T> {

    @Autowired
    private ApplicationContext applicationContext;
    protected BaseDao<T> baseDao;

    @PostConstruct
    public void initBaseDao() {
        // 获取当前new的对象的泛型的父类类型
        ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
        // 获取第一个类型参数的真实类型
        Class<T> modelClazz = (Class<T>) pt.getActualTypeArguments()[0];
        baseDao = (BaseDao<T>) applicationContext.getBean(CommonUtils.getDefaultBeanName(modelClazz.getSimpleName()) + "Dao");
    }

    @Override
    public T getOne(Long id) {
        return baseDao.selectOne(id);
    }

    @Override
    public T getOne(T entity) {
        Map<String, Object> whereMap = CommonUtils.getFieldVals(entity);
        List<T> resultList = baseDao.selectList(whereMap);
        if (!CollectionUtils.isEmpty(resultList) && resultList.size() > 1) {
            log.warn("查询结果记录数：{},查询条件：{}", resultList.size(), whereMap);
            throw new IllegalArgumentException("查询结果记录数：" + resultList.size());
        }
        return CollectionUtils.isEmpty(resultList) ? null : resultList.get(0);
    }

    @Override
    public List<T> findList(T entity) {
        return baseDao.selectList(CommonUtils.getFieldVals(entity));
    }

    @Override
    public PageInfo<T> findByPage(Page<T> page, T entity) {
        //分页的处理
        PageHelper.startPage(page.getPageNum(), page.getPageSize(), true);
        PageHelper.orderBy(page.getOrderBy());
        return new PageInfo<>(baseDao.selectByPage(CommonUtils.getFieldVals(entity)));
    }

    @Transactional
    @Override
    public Long save(T entity) {
        if (entity.getGmtCreate() == null) {
            entity.setGmtCreate(new Date());
        }
        if (entity.getCreator() == null) {
            entity.setCreator("");
        }
        if (entity.getGmtModified() == null) {
            entity.setGmtModified(entity.getGmtCreate());
        }
        if (entity.getModifier() == null) {
            entity.setModifier("");
        }
        return baseDao.insert(entity);
    }

    @Transactional
    @Override
    public Long update(T entity) {
        if (CollectionUtils.isEmpty(CommonUtils.getFieldVals(entity))) {
            log.warn("更新条件为空：{}", entity);
            return 0L;
        }
        if (entity.getGmtModified() == null) {
            entity.setGmtModified(new Date());
        }
        if (entity.getModifier() == null) {
            entity.setModifier("");
        }
        return baseDao.update(entity);
    }

    @Transactional
    @Override
    public Long delete(Long id) {
        Map<String, Object> whereMap = new HashMap<>();
        whereMap.put("id", id);
        return baseDao.delete(whereMap);
    }

    @Transactional
    @Override
    public Long delete(T entity) {
        Map<String, Object> whereMap = CommonUtils.getFieldVals(entity);
        if (CollectionUtils.isEmpty(whereMap)) {
            log.warn("删除条件为空：{}", entity);
            return 0L;
        }
        return baseDao.delete(whereMap);
    }

}
*/
