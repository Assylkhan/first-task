package com.epam.testapp.presentation.action;

import com.epam.testapp.database.NewsDao;
import com.epam.testapp.model.News;
import com.epam.testapp.presentation.form.NewsForm;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class NewsPagesAction extends DispatchAction {
    static final String NEWS_LIST = "newsList";
    static final String NEWS_FORM = "newsForm";
    private NewsDao newsDao;

    public NewsDao getNewsDao() {
        return newsDao;
    }

    public void setNewsDao(NewsDao newsDao) {
        this.newsDao = newsDao;
    }

    public ActionForward list(ActionMapping mapping, ActionForm form,
                              HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        final String LIST = "list";
        List<News> newsList = newsDao.getList();
        request.setAttribute("newsList", newsList);
        return mapping.findForward(LIST);
    }

    public ActionForward view(ActionMapping mapping, ActionForm form,
                              HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        News news = newsDao.fetchById(Long.valueOf(request.getParameter("id")));
        request.setAttribute("news", news);
        return mapping.findForward("news");
    }

    public ActionForward add(ActionMapping mapping, ActionForm form,
                             HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(NEWS_FORM);
    }

    public ActionForward edit(ActionMapping mapping, ActionForm form,
                              HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        NewsForm newsForm = (NewsForm) form;
        News news = newsDao.fetchById(Long.valueOf(request.getParameter("id")));
        request.setAttribute("news", news);
        return mapping.findForward(NEWS_FORM);
    }
}
