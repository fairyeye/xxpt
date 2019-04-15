package com.xxpt.common.service;

import java.util.List;

public interface BaseService<T> {

    /**
     * 根据对象ID查询单个对象
     *
     * @param id 对象ID
     * @return 单个对象
     */
    T getOne(Integer id) throws Exception;

    /**
     * 根据对象的唯一属性或属性组合查询单个对象
     *
     * @param entity 实体对象
     * @return 单个对象
     */
    T getOne(T entity);

    /**
     * 根据对象属性及值查询
     *
     * @return 对象列表
     */
    List<T> findList();

    /**
     * 创建对象
     *
     * @param entity 实体对象
     * @return 新增的记录数
     */
    void save(T entity) throws Exception;

    /**
     * 根据对象ID或其它属性修改对象
     *
     * @param entity 实体对象
     * @return 被更新的记录数
     */
    void update(T entity) throws Exception;

    /**
     * 根据对象ID删除单个对象
     *
     * @param id 对象ID
     * @return 被删除的记录数
     */
    void delete(Integer id) throws Exception;

    /**
     * 根据对象属性值删除对象
     *
     * @param entity 对象属性值
     * @return 被删除的记录数
     */
    Long delete(T entity);

    void updateById(T entity) throws Exception;

    List<T> getListByKeyword(String keywords) throws Exception;
}