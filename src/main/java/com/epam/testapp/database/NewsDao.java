package com.epam.testapp.database;

import com.epam.testapp.model.News;

import java.util.List;

public interface NewsDao {
    public News fetchById(Long id) throws DaoException;
    public List<News> getList() throws DaoException;
    public News save(News news) throws DaoException;
    public void update(News news) throws DaoException;
    public void removeById(Long id) throws DaoException;
}
