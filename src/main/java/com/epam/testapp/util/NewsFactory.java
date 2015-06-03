package com.epam.testapp.util;

import com.epam.testapp.model.News;
import com.epam.testapp.presentation.form.NewsForm;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class NewsFactory {
    public static News createNewsBean(NewsForm newsForm){
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.forLanguageTag("ru_RU"));
        News news = new News();
        if (newsForm.getId() != null) news.setId(Long.valueOf(newsForm.getId()));
        news.setTitle(newsForm.getTitle());
        try {
            long time = format.parse(newsForm.getDate()).getTime();
            news.setDate(new java.sql.Date(time));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        news.setBrief(newsForm.getBrief());
        news.setContent(newsForm.getContent());
        return news;
    }
}
