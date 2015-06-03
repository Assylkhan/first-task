package com.epam.testapp.database.H2;

import com.epam.testapp.database.DaoException;
import com.epam.testapp.database.NewsDao;
import com.epam.testapp.database.NewsMapper;
import com.epam.testapp.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Component
public class H2NewsDao extends JdbcDaoSupport implements NewsDao {

    /*@Autowired
    public H2NewsDao(DataSource dataSource) {
        super();
        setDataSource(dataSource);
    }*/
    @Autowired
    @Override
    public News fetchById(Long id) throws DaoException {
        final String SQL = "SELECT * FROM NEWS WHERE ID=?";
        return getJdbcTemplate().queryForObject(SQL, new Object[]{id}, new NewsMapper());
    }

    @Autowired
    @Override
    public List<News> getList() throws DaoException {
        final String SQL = "SELECT * FROM NEWS";
        return getJdbcTemplate().query(SQL, new NewsMapper());
    }

    @Autowired
    @Override
    public News save(News news) throws DaoException {
        final String SQL = "INSERT INTO NEWS (TITLE, DATE, BRIEF, CONTENT) VALUES (?, ?, ?, ?)";
        getJdbcTemplate().update(SQL, news.getTitle(), news.getDate(), news.getBrief(), news.getContent());
        return news;
    }

    @Autowired
    @Override
    public void update(News news) throws DaoException {
        final String SQL = "UPDATE NEWS SET TITLE=?, DATE=?, BRIEF=?, CONTENT=? WHERE ID=?";
        final News news1 = news;
        getJdbcTemplate().update(SQL, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, news1.getTitle());
                ps.setDate(2, news1.getDate());
                ps.setString(3, news1.getBrief());
                ps.setString(4, news1.getContent());
                ps.setLong(5, news1.getId());
            }
        });
//        news.getTitle(), news.getDate(), news.getBrief(), news.getContent(), news.getId()
    }

    @Autowired
    @Override
    public void removeById(Long id) throws DaoException {
        final String SQL = "DELETE FROM NEWS WHERE ID=?";
        getJdbcTemplate().update(SQL, id);
    }
}
