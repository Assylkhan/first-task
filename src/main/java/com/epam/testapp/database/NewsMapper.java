package com.epam.testapp.database;

import com.epam.testapp.model.News;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NewsMapper implements RowMapper<News> {
    @Override
    public News mapRow(ResultSet resultSet, int i) throws SQLException {
        News news = new News();
        news.setId(resultSet.getLong("ID"));
        news.setDate(resultSet.getDate("DATE"));
        news.setTitle(resultSet.getString("TITLE"));
        news.setBrief(resultSet.getString("BRIEF"));
        news.setContent(resultSet.getString("CONTENT"));
        return news;
    }
}
