package com.epam.testapp.presentation.action;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

public class ChangeLocaleAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String language = request.getParameter("language");
        String header = request.getHeader("referer");
        header = header.substring(header.lastIndexOf("/") + 1);
        request.getSession().setAttribute("locale", new Locale(language));
        return new ActionForward(header, true);
    }
}
